.class public Lcom/google/firebase/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/b$b;,
        Lcom/google/firebase/b$a;,
        Lcom/google/firebase/b$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/firebase/h;

.field private final g:Lcom/google/firebase/components/j;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcom/google/firebase/components/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/u<",
            "Lcom/google/firebase/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/google/firebase/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/b$b;-><init>(Lcom/google/firebase/b$1;)V

    sput-object v0, Lcom/google/firebase/b;->c:Ljava/util/concurrent/Executor;

    .line 101
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    sput-object v0, Lcom/google/firebase/b;->a:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/h;)V
    .locals 5

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b;->k:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b;->l:Ljava/util/List;

    .line 412
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    .line 413
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    .line 414
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/h;

    iput-object p2, p0, Lcom/google/firebase/b;->f:Lcom/google/firebase/h;

    .line 416
    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 2064
    new-instance v0, Lcom/google/firebase/components/f;

    new-instance v2, Lcom/google/firebase/components/f$a;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/google/firebase/components/f$a;-><init>(Ljava/lang/Class;Lcom/google/firebase/components/f$1;)V

    invoke-direct {v0, p1, v2}, Lcom/google/firebase/components/f;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/f$b;)V

    .line 418
    invoke-virtual {v0}, Lcom/google/firebase/components/f;->a()Ljava/util/List;

    move-result-object p2

    .line 420
    sget-object v0, Lcom/google/firebase/b;->c:Ljava/util/concurrent/Executor;

    .line 421
    invoke-static {v0}, Lcom/google/firebase/components/j;->a(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/j$a;

    move-result-object v0

    .line 2345
    iget-object v2, v0, Lcom/google/firebase/components/j$a;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 422
    new-instance p2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {p2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 2350
    iget-object v2, v0, Lcom/google/firebase/components/j$a;->b:Ljava/util/List;

    .line 3000
    new-instance v4, Lcom/google/firebase/components/p;

    invoke-direct {v4, p2}, Lcom/google/firebase/components/p;-><init>(Lcom/google/firebase/components/i;)V

    .line 2350
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const-class p2, Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Class;

    .line 424
    invoke-static {p1, p2, v2}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/j$a;->a(Lcom/google/firebase/components/b;)Lcom/google/firebase/components/j$a;

    move-result-object p2

    const-class v0, Lcom/google/firebase/b;

    new-array v2, v1, [Ljava/lang/Class;

    .line 425
    invoke-static {p0, v0, v2}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/components/j$a;->a(Lcom/google/firebase/components/b;)Lcom/google/firebase/components/j$a;

    move-result-object p2

    const-class v0, Lcom/google/firebase/h;

    new-array v1, v1, [Ljava/lang/Class;

    .line 426
    invoke-static {p3, v0, v1}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/firebase/components/j$a;->a(Lcom/google/firebase/components/b;)Lcom/google/firebase/components/j$a;

    move-result-object p2

    .line 3360
    new-instance p3, Lcom/google/firebase/components/j;

    iget-object v0, p2, Lcom/google/firebase/components/j$a;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p2, Lcom/google/firebase/components/j$a;->b:Ljava/util/List;

    iget-object p2, p2, Lcom/google/firebase/components/j$a;->c:Ljava/util/List;

    invoke-direct {p3, v0, v1, p2, v3}, Lcom/google/firebase/components/j;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lcom/google/firebase/components/j$1;)V

    .line 427
    iput-object p3, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/j;

    .line 429
    new-instance p2, Lcom/google/firebase/components/u;

    .line 4000
    new-instance p3, Lcom/google/firebase/c;

    invoke-direct {p3, p0, p1}, Lcom/google/firebase/c;-><init>(Lcom/google/firebase/b;Landroid/content/Context;)V

    .line 429
    invoke-direct {p2, p3}, Lcom/google/firebase/components/u;-><init>(Lcom/google/firebase/d/b;)V

    iput-object p2, p0, Lcom/google/firebase/b;->j:Lcom/google/firebase/components/u;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/b;
    .locals 3

    .line 239
    sget-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/google/firebase/b;->a:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 243
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/h;->a(Landroid/content/Context;)Lcom/google/firebase/h;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    .line 245
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 250
    monitor-exit v0

    return-object p0

    :cond_1
    const-string v2, "[DEFAULT]"

    .line 1267
    invoke-static {p0, v1, v2}, Lcom/google/firebase/b;->a(Landroid/content/Context;Lcom/google/firebase/h;Ljava/lang/String;)Lcom/google/firebase/b;

    move-result-object p0

    .line 252
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/Context;Lcom/google/firebase/h;Ljava/lang/String;)Lcom/google/firebase/b;
    .locals 5

    .line 283
    invoke-static {p0}, Lcom/google/firebase/b$a;->a(Landroid/content/Context;)V

    .line 1590
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 293
    :goto_0
    sget-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    sget-object v1, Lcom/google/firebase/b;->a:Ljava/util/Map;

    .line 295
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FirebaseApp name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    .line 298
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v2, Lcom/google/firebase/b;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/h;)V

    .line 300
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-direct {v2}, Lcom/google/firebase/b;->j()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/google/firebase/b;Landroid/content/Context;)Lcom/google/firebase/e/a;
    .locals 3

    .line 432
    new-instance v0, Lcom/google/firebase/e/a;

    .line 434
    invoke-virtual {p0}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/j;

    const-class v2, Lcom/google/firebase/b/c;

    .line 435
    invoke-virtual {p0, v2}, Lcom/google/firebase/components/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/b/c;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/firebase/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/b/c;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/firebase/b;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/google/firebase/b;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/b;Z)V
    .locals 0

    .line 4458
    iget-object p0, p0, Lcom/google/firebase/b;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/firebase/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/firebase/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static d()Lcom/google/firebase/b;
    .locals 4

    .line 177
    sget-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/google/firebase/b;->a:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/b;

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-object v1

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/google/android/gms/common/util/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 89
    sget-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/google/firebase/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/h;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/b$c;->a(Landroid/content/Context;)V

    return-void

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device unlocked: initializing all Firebase APIs for app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v0, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/j;

    invoke-virtual {p0}, Lcom/google/firebase/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/j;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 127
    iget-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 336
    iget-object v0, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/j;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 134
    iget-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/firebase/h;
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 141
    iget-object v0, p0, Lcom/google/firebase/b;->f:Lcom/google/firebase/h;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 374
    iget-object v0, p0, Lcom/google/firebase/b;->j:Lcom/google/firebase/components/u;

    invoke-virtual {v0}, Lcom/google/firebase/components/u;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/e/a;

    invoke-virtual {v0}, Lcom/google/firebase/e/a;->a()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 146
    instance-of v0, p1, Lcom/google/firebase/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/b;

    invoke-virtual {p1}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 2

    .line 446
    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object v1

    .line 4183
    iget-object v1, v1, Lcom/google/firebase/h;->b:Ljava/lang/String;

    .line 505
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 504
    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/b;->f:Lcom/google/firebase/h;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
