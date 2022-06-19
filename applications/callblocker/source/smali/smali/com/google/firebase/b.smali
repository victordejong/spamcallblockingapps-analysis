.class public Lcom/google/firebase/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/b$c;,
        Lcom/google/firebase/b$b;,
        Lcom/google/firebase/b$d;,
        Lcom/google/firebase/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/b;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "LOCK"
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/firebase/d;

.field private final g:Lcom/google/firebase/components/i;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcom/google/firebase/components/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/q",
            "<",
            "Lcom/google/firebase/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/google/firebase/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/b$c;-><init>(Lcom/google/firebase/b$1;)V

    sput-object v0, Lcom/google/firebase/b;->c:Ljava/util/concurrent/Executor;

    .line 102
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    sput-object v0, Lcom/google/firebase/b;->a:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/d;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b;->k:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b;->l:Ljava/util/List;

    .line 398
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    .line 399
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    .line 400
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/d;

    iput-object v0, p0, Lcom/google/firebase/b;->f:Lcom/google/firebase/d;

    .line 402
    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 403
    invoke-static {p1, v0}, Lcom/google/firebase/components/f;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/google/firebase/components/f;->a()Ljava/util/List;

    move-result-object v1

    .line 406
    invoke-static {}, Lcom/google/firebase/e/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v2, Lcom/google/firebase/components/i;

    sget-object v3, Lcom/google/firebase/b;->c:Ljava/util/concurrent/Executor;

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/google/firebase/components/b;

    const-class v5, Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Class;

    .line 411
    invoke-static {p1, v5, v6}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const-class v6, Lcom/google/firebase/b;

    new-array v7, v8, [Ljava/lang/Class;

    .line 412
    invoke-static {p0, v6, v7}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/google/firebase/d;

    new-array v7, v8, [Ljava/lang/Class;

    .line 413
    invoke-static {p3, v6, v7}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "fire-android"

    const-string/jumbo v7, ""

    .line 414
    invoke-static {v6, v7}, Lcom/google/firebase/e/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "fire-core"

    const-string/jumbo v7, "19.3.0"

    .line 415
    invoke-static {v6, v7}, Lcom/google/firebase/e/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 416
    if-eqz v0, :cond_0

    const-string/jumbo v6, "kotlin"

    invoke-static {v6, v0}, Lcom/google/firebase/e/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x6

    .line 417
    invoke-static {}, Lcom/google/firebase/e/b;->b()Lcom/google/firebase/components/b;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    .line 418
    invoke-static {}, Lcom/google/firebase/b/a;->a()Lcom/google/firebase/components/b;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-direct {v2, v3, v1, v4}, Lcom/google/firebase/components/i;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/b;)V

    iput-object v2, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/i;

    .line 420
    new-instance v0, Lcom/google/firebase/components/q;

    invoke-static {p0, p1}, Lcom/google/firebase/c;->a(Lcom/google/firebase/b;Landroid/content/Context;)Lcom/google/firebase/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/components/q;-><init>(Lcom/google/firebase/c/a;)V

    iput-object v0, p0, Lcom/google/firebase/b;->j:Lcom/google/firebase/components/q;

    .line 427
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/b;
    .locals 3

    .prologue
    .line 240
    sget-object v1, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v0, Lcom/google/firebase/b;->a:Ljava/util/Map;

    const-string/jumbo v2, "[DEFAULT]"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    monitor-exit v1

    .line 253
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/d;->a(Landroid/content/Context;)Lcom/google/firebase/d;

    move-result-object v0

    .line 245
    if-nez v0, :cond_1

    .line 246
    const-string/jumbo v0, "FirebaseApp"

    const-string/jumbo v2, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_1
    :try_start_1
    invoke-static {p0, v0}, Lcom/google/firebase/b;->a(Landroid/content/Context;Lcom/google/firebase/d;)Lcom/google/firebase/b;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/d;)Lcom/google/firebase/b;
    .locals 1

    .prologue
    .line 268
    const-string/jumbo v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lcom/google/firebase/b;->a(Landroid/content/Context;Lcom/google/firebase/d;Ljava/lang/String;)Lcom/google/firebase/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/d;Ljava/lang/String;)Lcom/google/firebase/b;
    .locals 5

    .prologue
    .line 284
    invoke-static {p0}, Lcom/google/firebase/b$b;->a(Landroid/content/Context;)V

    .line 285
    invoke-static {p2}, Lcom/google/firebase/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    sget-object v2, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 295
    :try_start_0
    sget-object v0, Lcom/google/firebase/b;->a:Ljava/util/Map;

    .line 296
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 299
    const-string/jumbo v0, "Application context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v0, Lcom/google/firebase/b;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/firebase/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/d;)V

    .line 301
    sget-object v3, Lcom/google/firebase/b;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-direct {v0}, Lcom/google/firebase/b;->j()V

    .line 305
    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/firebase/b;Landroid/content/Context;)Lcom/google/firebase/d/a;
    .locals 4

    .prologue
    .line 423
    new-instance v1, Lcom/google/firebase/d/a;

    .line 425
    invoke-virtual {p0}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/i;

    const-class v3, Lcom/google/firebase/a/c;

    .line 426
    invoke-virtual {v0, v3}, Lcom/google/firebase/components/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/a/c;

    invoke-direct {v1, p1, v2, v0}, Lcom/google/firebase/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/a/c;)V

    .line 423
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/firebase/b;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/firebase/b;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/b;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/firebase/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 441
    const-string/jumbo v0, "FirebaseApp"

    const-string/jumbo v1, "Notifying background state change listeners."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/google/firebase/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b$a;

    .line 443
    invoke-interface {v0, p1}, Lcom/google/firebase/b$a;->a(Z)V

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/firebase/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/firebase/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static d()Lcom/google/firebase/b;
    .locals 4

    .prologue
    .line 178
    sget-object v1, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lcom/google/firebase/b;->a:Ljava/util/Map;

    const-string/jumbo v2, "[DEFAULT]"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b;

    .line 180
    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    invoke-static {}, Lcom/google/android/gms/common/util/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/firebase/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/firebase/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 431
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 559
    :goto_0
    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/b$d;->a(Landroid/content/Context;)V

    .line 565
    :goto_1
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/i;

    invoke-virtual {p0}, Lcom/google/firebase/b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/i;->a(Z)V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 128
    iget-object v0, p0, Lcom/google/firebase/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 337
    iget-object v0, p0, Lcom/google/firebase/b;->g:Lcom/google/firebase/components/i;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 135
    iget-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/firebase/d;
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 142
    iget-object v0, p0, Lcom/google/firebase/b;->f:Lcom/google/firebase/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/google/firebase/b;->i()V

    .line 375
    iget-object v0, p0, Lcom/google/firebase/b;->j:Lcom/google/firebase/components/q;

    invoke-virtual {v0}, Lcom/google/firebase/components/q;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/d/a;

    invoke-virtual {v0}, Lcom/google/firebase/d/a;->a()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 147
    instance-of v0, p1, Lcom/google/firebase/b;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/b;

    invoke-virtual {p1}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 437
    const-string/jumbo v0, "[DEFAULT]"

    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 488
    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/google/firebase/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "options"

    iget-object v2, p0, Lcom/google/firebase/b;->f:Lcom/google/firebase/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
