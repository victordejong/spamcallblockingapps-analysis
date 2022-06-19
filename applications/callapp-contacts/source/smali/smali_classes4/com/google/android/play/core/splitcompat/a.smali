.class public final Lcom/google/android/play/core/splitcompat/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/play/core/splitcompat/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/play/core/splitcompat/d;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/splitcompat/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitcompat/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    :try_start_0
    new-instance v0, Lcom/google/android/play/core/splitcompat/d;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitcompat/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/google/android/play/core/splitcompat/b;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/splitcompat/b;-><init>(Lcom/google/android/play/core/splitcompat/d;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/a;->d:Lcom/google/android/play/core/splitcompat/b;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/play/core/internal/bf;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/internal/bf;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/play/core/splitcompat/a;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/splitcompat/a;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitcompat/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 11

    invoke-static {}, Lcom/google/android/play/core/splitcompat/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/splitcompat/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/play/core/splitcompat/a;

    invoke-direct {v2, p0}, Lcom/google/android/play/core/splitcompat/a;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitcompat/a;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/play/core/splitinstall/aa;->a:Lcom/google/android/play/core/splitinstall/aa;

    new-instance v10, Lcom/google/android/play/core/internal/t;

    invoke-static {}, Lcom/google/android/play/core/splitcompat/q;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/android/play/core/internal/v;

    iget-object v4, v0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    new-instance v5, Lcom/google/android/play/core/internal/x;

    invoke-direct {v5}, Lcom/google/android/play/core/internal/x;-><init>()V

    invoke-direct {v7, p0, v4, v5, v3}, Lcom/google/android/play/core/internal/v;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/d;Lcom/google/android/play/core/internal/x;[B)V

    iget-object v8, v0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    new-instance v9, Lcom/google/android/play/core/splitcompat/q;

    invoke-direct {v9}, Lcom/google/android/play/core/splitcompat/q;-><init>()V

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/internal/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/play/core/internal/v;Lcom/google/android/play/core/splitcompat/d;Lcom/google/android/play/core/splitcompat/q;)V

    invoke-virtual {v2, v10}, Lcom/google/android/play/core/splitinstall/aa;->b(Lcom/google/android/play/core/splitinstall/u;)V

    new-instance v2, Lcom/google/android/play/core/splitcompat/m;

    invoke-direct {v2, v0}, Lcom/google/android/play/core/splitcompat/m;-><init>(Lcom/google/android/play/core/splitcompat/a;)V

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/ad;->a(Lcom/google/android/play/core/splitinstall/ac;)V

    invoke-static {}, Lcom/google/android/play/core/splitcompat/q;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitcompat/n;

    invoke-direct {v3, p0}, Lcom/google/android/play/core/splitcompat/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :try_start_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/splitcompat/a;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SplitCompat"

    const-string v0, "Error installing additional splits"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static synthetic b(Lcom/google/android/play/core/splitcompat/a;)Lcom/google/android/play/core/splitcompat/d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    return-object p0
.end method

.method private final declared-synchronized b(Landroid/content/Context;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/d;->a()V

    goto :goto_0

    .line 18000
    :cond_0
    invoke-static {}, Lcom/google/android/play/core/splitcompat/q;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/splitcompat/o;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/o;-><init>(Lcom/google/android/play/core/splitcompat/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 18000
    :cond_1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/d;->f()Ljava/util/Set;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/splitcompat/r;

    .line 3000
    iget-object v6, v6, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_3

    iget-object v7, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v7, v6}, Lcom/google/android/play/core/splitcompat/d;->f(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/google/android/play/core/splitcompat/q;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/google/android/play/core/splitcompat/p;

    invoke-direct {v6, p0, v4}, Lcom/google/android/play/core/splitcompat/p;-><init>(Lcom/google/android/play/core/splitcompat/a;Ljava/util/Set;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/splitcompat/r;

    .line 4000
    iget-object v6, v6, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/play/core/splitinstall/ae;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/play/core/splitinstall/ae;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/splitcompat/r;

    .line 5000
    iget-object v6, v5, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/play/core/splitinstall/ae;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 6000
    iget-object v6, v5, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/play/core/splitinstall/ae;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v6, ""

    goto :goto_7

    :cond_b
    const-string v7, "\\.config\\."

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    :goto_7
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_c
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/android/play/core/splitcompat/l;

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/splitcompat/l;-><init>(Lcom/google/android/play/core/splitcompat/d;)V

    .line 7000
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_19

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v2, :cond_e

    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([F)V

    goto :goto_9

    :pswitch_1
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([Z)V

    goto :goto_9

    :pswitch_2
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([I)V

    goto :goto_9

    :pswitch_3
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([S)V

    goto :goto_9

    :pswitch_4
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([C)V

    goto :goto_9

    :pswitch_5
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2}, Lcom/google/android/play/core/internal/ab;-><init>()V

    goto :goto_9

    :pswitch_6
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([B)V

    goto :goto_9

    :cond_e
    :goto_8
    new-instance v2, Lcom/google/android/play/core/internal/ab;

    invoke-direct {v2, v4}, Lcom/google/android/play/core/internal/ab;-><init>([[B)V

    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/l;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/google/android/play/core/internal/w;->a(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    goto :goto_c

    .line 17000
    :cond_f
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/splitcompat/r;

    .line 18000
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Lcom/google/android/play/core/splitcompat/f;

    invoke-direct {v10, v0, v7, v9, v8}, Lcom/google/android/play/core/splitcompat/f;-><init>(Lcom/google/android/play/core/splitcompat/l;Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v7, v10}, Lcom/google/android/play/core/splitcompat/l;->a(Lcom/google/android/play/core/splitcompat/r;Lcom/google/android/play/core/splitcompat/i;)V

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_b

    :cond_10
    move-object v9, v4

    :goto_b
    if-nez v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_11
    invoke-interface {v2, v5, v9}, Lcom/google/android/play/core/internal/w;->a(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    goto :goto_a

    .line 7000
    :cond_12
    :goto_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/splitcompat/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v7, Ljava/util/zip/ZipFile;

    .line 8000
    iget-object v8, v6, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v8, "classes.dex"

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_14

    :try_start_5
    iget-object v7, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitcompat/d;

    .line 9000
    iget-object v8, v6, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    .line 10000
    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Lcom/google/android/play/core/splitcompat/d;->d()Ljava/io/File;

    move-result-object v7

    const-string v10, "dex"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/google/android/play/core/splitcompat/d;->b(Ljava/io/File;)V

    invoke-static {v9, v8}, Lcom/google/android/play/core/splitcompat/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/play/core/splitcompat/d;->b(Ljava/io/File;)V

    .line 11000
    iget-object v8, v6, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-interface {v2, v5, v7, v8, p2}, Lcom/google/android/play/core/internal/w;->a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_e

    .line 13000
    :cond_13
    iget-object v6, v6, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x18

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "split was not installed "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SplitCompat"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 12000
    :cond_14
    :goto_e
    iget-object v6, v6, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_d

    :catch_0
    move-exception p1

    move-object v4, v7

    goto :goto_f

    :catch_1
    move-exception p1

    :goto_f
    if-eqz v4, :cond_15

    .line 18000
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_10

    :catch_2
    move-exception p2

    :try_start_7
    invoke-static {p1, p2}, Lcom/google/android/play/core/internal/ay;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_15
    :goto_10
    throw p1

    .line 13000
    :cond_16
    iget-object p2, p0, Lcom/google/android/play/core/splitcompat/a;->d:Lcom/google/android/play/core/splitcompat/b;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/splitcompat/b;->b(Landroid/content/Context;Ljava/util/Set;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitcompat/r;

    .line 14000
    iget-object v2, v1, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 15000
    iget-object v2, v1, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Split \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' installation emulated"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16000
    iget-object v1, v1, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 17000
    :cond_17
    iget-object v1, v1, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x23

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Split \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' installation not emulated."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_18
    iget-object p2, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 18000
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1

    .line 7000
    :cond_19
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unsupported Android Version"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_3
    move-exception p1

    .line 18000
    new-instance p2, Ljava/io/IOException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Cannot load data for application \'%s\'"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/play/core/splitcompat/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/splitcompat/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitcompat/a;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1000
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;Z)Z

    .line 2000
    :cond_1
    invoke-static {p0, v1}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;Z)Z

    move-result p0

    return p0

    :cond_2
    iget-object v1, v0, Lcom/google/android/play/core/splitcompat/a;->d:Lcom/google/android/play/core/splitcompat/b;

    invoke-direct {v0}, Lcom/google/android/play/core/splitcompat/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/google/android/play/core/splitcompat/b;->a(Landroid/content/Context;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private final c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method
