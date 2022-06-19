.class public Lcom/twitter/sdk/android/core/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Lcom/twitter/sdk/android/core/r;


# instance fields
.field public b:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/twitter/sdk/android/core/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/d<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field public volatile f:Lcom/twitter/sdk/android/core/o;

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/twitter/sdk/android/core/l;",
            "Lcom/twitter/sdk/android/core/o;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private volatile i:Lcom/twitter/sdk/android/core/e;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/r;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/o;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/twitter/sdk/android/core/l;",
            "Lcom/twitter/sdk/android/core/o;",
            ">;",
            "Lcom/twitter/sdk/android/core/o;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/twitter/sdk/android/core/r;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 64
    iput-object p2, p0, Lcom/twitter/sdk/android/core/r;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    iput-object p3, p0, Lcom/twitter/sdk/android/core/r;->f:Lcom/twitter/sdk/android/core/o;

    .line 66
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->a()Lcom/twitter/sdk/android/core/n;

    move-result-object p1

    .line 1157
    new-instance p2, Lcom/twitter/sdk/android/core/q;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/n;->c:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ".TwitterKit"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.twitter.sdk.android:twitter-core"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lcom/twitter/sdk/android/core/q;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p2, p0, Lcom/twitter/sdk/android/core/r;->h:Landroid/content/Context;

    .line 68
    new-instance p1, Lcom/twitter/sdk/android/core/i;

    new-instance p3, Lcom/twitter/sdk/android/core/internal/b/b;

    const-string v0, "session_store"

    invoke-direct {p3, p2, v0}, Lcom/twitter/sdk/android/core/internal/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/twitter/sdk/android/core/t$a;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/t$a;-><init>()V

    const-string v2, "active_twittersession"

    const-string v3, "twittersession"

    invoke-direct {p1, p3, v1, v2, v3}, Lcom/twitter/sdk/android/core/i;-><init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 73
    new-instance p1, Lcom/twitter/sdk/android/core/i;

    new-instance p3, Lcom/twitter/sdk/android/core/internal/b/b;

    invoke-direct {p3, p2, v0}, Lcom/twitter/sdk/android/core/internal/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/twitter/sdk/android/core/d$a;

    invoke-direct {p2}, Lcom/twitter/sdk/android/core/d$a;-><init>()V

    const-string v0, "active_guestsession"

    const-string v1, "guestsession"

    invoke-direct {p1, p3, p2, v0, v1}, Lcom/twitter/sdk/android/core/i;-><init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/r;->c:Lcom/twitter/sdk/android/core/m;

    .line 78
    new-instance p1, Lcom/twitter/sdk/android/core/internal/d;

    iget-object p2, p0, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 79
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->a()Lcom/twitter/sdk/android/core/n;

    move-result-object p3

    .line 1171
    iget-object p3, p3, Lcom/twitter/sdk/android/core/n;->d:Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v0, Lcom/twitter/sdk/android/core/internal/h;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/h;-><init>()V

    invoke-direct {p1, p2, p3, v0}, Lcom/twitter/sdk/android/core/internal/d;-><init>(Lcom/twitter/sdk/android/core/m;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/e;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/r;->d:Lcom/twitter/sdk/android/core/internal/d;

    return-void
.end method

.method public static a()Lcom/twitter/sdk/android/core/r;
    .locals 3

    .line 83
    sget-object v0, Lcom/twitter/sdk/android/core/r;->a:Lcom/twitter/sdk/android/core/r;

    if-nez v0, :cond_1

    .line 84
    const-class v0, Lcom/twitter/sdk/android/core/r;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/core/r;->a:Lcom/twitter/sdk/android/core/r;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/twitter/sdk/android/core/r;

    invoke-static {}, Lcom/twitter/sdk/android/core/n;->a()Lcom/twitter/sdk/android/core/n;

    move-result-object v2

    .line 2164
    iget-object v2, v2, Lcom/twitter/sdk/android/core/n;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 86
    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/r;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    sput-object v1, Lcom/twitter/sdk/android/core/r;->a:Lcom/twitter/sdk/android/core/r;

    .line 87
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->a()Lcom/twitter/sdk/android/core/n;

    move-result-object v1

    .line 2171
    iget-object v1, v1, Lcom/twitter/sdk/android/core/n;->d:Ljava/util/concurrent/ExecutorService;

    .line 87
    sget-object v2, Lcom/twitter/sdk/android/core/-$$Lambda$r$z2vXB79wm2oiJx7gBIFZblxiemk;->INSTANCE:Lcom/twitter/sdk/android/core/-$$Lambda$r$z2vXB79wm2oiJx7gBIFZblxiemk;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/twitter/sdk/android/core/r;->a:Lcom/twitter/sdk/android/core/r;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "3.3.0.12"

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->i:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/g;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/g;)V

    .line 141
    new-instance v1, Lcom/twitter/sdk/android/core/e;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/r;->c:Lcom/twitter/sdk/android/core/m;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/m;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/r;->i:Lcom/twitter/sdk/android/core/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic f()V
    .locals 3

    .line 87
    sget-object v0, Lcom/twitter/sdk/android/core/r;->a:Lcom/twitter/sdk/android/core/r;

    .line 3104
    iget-object v1, v0, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    .line 3105
    iget-object v1, v0, Lcom/twitter/sdk/android/core/r;->c:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    .line 3106
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/r;->c()Lcom/twitter/sdk/android/core/e;

    .line 3110
    iget-object v0, v0, Lcom/twitter/sdk/android/core/r;->d:Lcom/twitter/sdk/android/core/internal/d;

    .line 3111
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->a()Lcom/twitter/sdk/android/core/n;

    move-result-object v1

    .line 3178
    iget-object v1, v1, Lcom/twitter/sdk/android/core/n;->f:Lcom/twitter/sdk/android/core/internal/a;

    .line 4067
    new-instance v2, Lcom/twitter/sdk/android/core/internal/d$1;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/internal/d$1;-><init>(Lcom/twitter/sdk/android/core/internal/d;)V

    .line 5063
    iget-object v0, v1, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/a$a;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/a$a;

    .line 5093
    iget-object v1, v0, Lcom/twitter/sdk/android/core/internal/a$a;->b:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 5094
    new-instance v1, Lcom/twitter/sdk/android/core/internal/a$a$1;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/internal/a$a$1;-><init>(Lcom/twitter/sdk/android/core/internal/a$a;Lcom/twitter/sdk/android/core/internal/a$b;)V

    .line 5133
    iget-object v2, v0, Lcom/twitter/sdk/android/core/internal/a$a;->b:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 5134
    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/a$a;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$z2vXB79wm2oiJx7gBIFZblxiemk()V
    .locals 0

    invoke-static {}, Lcom/twitter/sdk/android/core/r;->f()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/t;)Lcom/twitter/sdk/android/core/o;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/t;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/o;

    return-object p1
.end method

.method public final c()Lcom/twitter/sdk/android/core/e;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->i:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/r;->e()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->i:Lcom/twitter/sdk/android/core/e;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/r;->f:Lcom/twitter/sdk/android/core/o;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/o;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/r;->f:Lcom/twitter/sdk/android/core/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
