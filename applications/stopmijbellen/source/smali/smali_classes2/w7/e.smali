.class public Lw7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/e$b;,
        Lw7/e$c;
    }
.end annotation


# static fields
.field public static final i:Landroid/os/Handler;

.field public static j:I

.field public static k:Ljava/util/concurrent/ExecutorService;

.field public static l:Ljava/util/concurrent/ExecutorService;

.field public static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lw7/e;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lw7/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ln7/a;

.field public b:Ls6/g;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw7/q;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Lp6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp6/c;"
        }
    .end annotation
.end field

.field public f:Lw7/e$b;

.field public g:Landroid/content/Context;

.field public h:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lw7/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lw7/e;->i:Landroid/os/Handler;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lw7/e;->j:I

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lw7/e;->k:Ljava/util/concurrent/ExecutorService;

    .line 4
    sget v0, Lw7/e;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lw7/e;->l:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lw7/e;->m:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lw7/e$a;

    invoke-direct {v0}, Lw7/e$a;-><init>()V

    sput-object v0, Lw7/e;->n:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw7/e;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lp6/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lp6/c;-><init>(I)V

    iput-object v0, p0, Lw7/e;->e:Lp6/c;

    .line 4
    new-instance v0, Lw7/e$b;

    invoke-direct {v0, p0}, Lw7/e$b;-><init>(Lw7/e;)V

    iput-object v0, p0, Lw7/e;->f:Lw7/e$b;

    .line 5
    new-instance v0, Lw7/h;

    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lw7/e;->h:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lw7/e;->g:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lw7/e;->d:Ljava/lang/String;

    .line 9
    new-instance v0, Ln7/a;

    new-instance v1, Lk7/h;

    const-string v2, "ion-"

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lk7/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln7/a;-><init>(Lk7/h;)V

    iput-object v0, p0, Lw7/e;->a:Ln7/a;

    .line 10
    iget-object v0, v0, Ln7/a;->b:Ln7/n;

    .line 11
    new-instance v1, Lx7/c;

    invoke-direct {v1}, Lx7/c;-><init>()V

    .line 12
    iput-object v1, v0, Ln7/n;->i:Ljavax/net/ssl/HostnameVerifier;

    .line 13
    iget-object v0, p0, Lw7/e;->a:Ln7/a;

    new-instance v1, La8/a;

    iget-object v2, p0, Lw7/e;->a:Ln7/a;

    .line 14
    iget-object v2, v2, Ln7/a;->b:Ln7/n;

    .line 15
    invoke-direct {v1, p1, v2}, La8/a;-><init>(Landroid/content/Context;Ln7/n;)V

    .line 16
    iget-object v0, v0, Ln7/a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v3, 0xa00000

    .line 18
    :try_start_0
    iget-object v1, p0, Lw7/e;->a:Ln7/a;

    invoke-static {v1, v0, v3, v4}, Lp7/d;->i(Ln7/a;Ljava/io/File;J)Lp7/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ION"

    const-string v6, "unable to set up response cache, clearing"

    .line 19
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    invoke-static {v0}, Li4/d;->o(Ljava/io/File;)Z

    .line 21
    :try_start_1
    iget-object v6, p0, Lw7/e;->a:Ln7/a;

    invoke-static {v6, v0, v3, v4}, Lp7/d;->i(Ln7/a;Ljava/io/File;J)Lp7/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "unable to set up response cache, failing"

    .line 22
    invoke-static {v5, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    new-instance v0, Lu7/d;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide p1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, p1, p2, v2}, Lu7/d;-><init>(Ljava/io/File;JZ)V

    .line 24
    iget-object p1, p0, Lw7/e;->a:Ln7/a;

    new-instance p2, Lb8/a;

    invoke-direct {p2, p0}, Lb8/a;-><init>(Lw7/e;)V

    .line 25
    iget-object p1, p1, Ln7/a;->a:Ljava/util/List;

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lw7/e;->a:Ln7/a;

    .line 27
    iget-object p2, p1, Ln7/a;->c:Ln7/s;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p2, Ln7/s;->e:Z

    .line 29
    iget-object p1, p1, Ln7/a;->b:Ln7/n;

    .line 30
    iput-boolean v0, p1, Ln7/s;->e:Z

    .line 31
    iget-object p1, p0, Lw7/e;->g:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 38
    new-instance p2, Ly7/b;

    const-string v0, "activity"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    .line 40
    div-int/lit8 p1, p1, 0x7

    invoke-direct {p2, p1}, Ly7/b;-><init>(I)V

    .line 41
    iget-object p1, p0, Lw7/e;->f:Lw7/e$b;

    .line 42
    new-instance p2, Le8/m;

    invoke-direct {p2}, Le8/m;-><init>()V

    .line 43
    iget-object v0, p1, Lw7/e$b;->b:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p2, Le8/h;

    invoke-direct {p2}, Le8/h;-><init>()V

    .line 45
    iget-object v0, p1, Lw7/e$b;->b:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p2, Le8/f;

    invoke-direct {p2}, Le8/f;-><init>()V

    .line 47
    iget-object v0, p1, Lw7/e$b;->b:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance p2, Le8/c;

    invoke-direct {p2}, Le8/c;-><init>()V

    .line 49
    iget-object v0, p1, Lw7/e$b;->b:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p2, Le8/j;

    invoke-direct {p2}, Le8/j;-><init>()V

    .line 51
    iget-object v0, p1, Lw7/e$b;->b:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance p2, Le8/a;

    invoke-direct {p2}, Le8/a;-><init>()V

    .line 53
    iget-object v0, p1, Lw7/e$b;->b:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance p2, Le8/e;

    invoke-direct {p2}, Le8/e;-><init>()V

    .line 55
    iget-object p1, p1, Lw7/e$b;->b:Lw7/e;

    iget-object p1, p1, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lz7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lz7/c<",
            "Lz7/a;",
            ">;"
        }
    .end annotation

    const-string v0, "Can not pass null context in to retrieve ion instance"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lw7/e;->m:Ljava/util/HashMap;

    const-string v1, "ion"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/e;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lw7/e;->m:Ljava/util/HashMap;

    new-instance v2, Lw7/e;

    invoke-direct {v2, p0, v1}, Lw7/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 4
    :cond_0
    new-instance v1, Lw7/p;

    sget v2, Lw7/c;->a:I

    .line 5
    instance-of v2, p0, Landroid/app/Service;

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lw7/c$c;

    check-cast p0, Landroid/app/Service;

    invoke-direct {v2, p0}, Lw7/c$c;-><init>(Landroid/app/Service;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Lw7/c$a;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v2, p0}, Lw7/c$a;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Lw7/b;

    invoke-direct {v2, p0}, Lw7/b;-><init>(Landroid/content/Context;)V

    .line 10
    :goto_0
    invoke-direct {v1, v2, v0}, Lw7/p;-><init>(Lw7/g;Lw7/e;)V

    return-object v1
.end method


# virtual methods
.method public a(Lm7/c;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    move-object v0, p1

    check-cast v0, Lm7/f;

    .line 2
    iget-boolean v1, v0, Lm7/f;->a:Z

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lw7/e;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw7/e$c;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lw7/e$c;

    invoke-direct {v0}, Lw7/e$c;-><init>()V

    .line 7
    iget-object v1, p0, Lw7/e;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
