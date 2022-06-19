.class public final Lcom/google/android/play/core/splitinstall/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/a;


# static fields
.field static final a:J

.field public static final synthetic h:I


# instance fields
.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/play/core/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/g<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/play/core/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/g<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/Executor;

.field final f:Lcom/google/android/play/core/splitinstall/t;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/android/play/core/splitinstall/ae;

.field private final k:Lcom/google/android/play/core/internal/an;

.field private final l:Ljava/io/File;

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/play/core/splitinstall/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/play/core/splitinstall/a/a;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/splitinstall/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/splitinstall/a/a;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/google/android/play/core/splitinstall/ae;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/google/android/play/core/splitinstall/ae;)V
    .locals 5

    invoke-static {}, Lcom/google/android/play/core/splitcompat/q;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/internal/an;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/internal/an;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/play/core/splitinstall/a/b;->a:Lcom/google/android/play/core/splitinstall/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/a/a;->i:Landroid/os/Handler;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/a/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/a/a;->n:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/a/a;->o:Ljava/util/Set;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/google/android/play/core/splitinstall/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/a/a;->l:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/a/a;->j:Lcom/google/android/play/core/splitinstall/ae;

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/a/a;->e:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lcom/google/android/play/core/splitinstall/a/a;->k:Lcom/google/android/play/core/internal/an;

    iput-object v2, p0, Lcom/google/android/play/core/splitinstall/a/a;->p:Lcom/google/android/play/core/splitinstall/a/b;

    new-instance p1, Lcom/google/android/play/core/internal/g;

    invoke-direct {p1}, Lcom/google/android/play/core/internal/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/a;->d:Lcom/google/android/play/core/internal/g;

    new-instance p1, Lcom/google/android/play/core/internal/g;

    invoke-direct {p1}, Lcom/google/android/play/core/internal/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/a;->c:Lcom/google/android/play/core/internal/g;

    sget-object p1, Lcom/google/android/play/core/splitinstall/aa;->a:Lcom/google/android/play/core/splitinstall/aa;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/a;->f:Lcom/google/android/play/core/splitinstall/t;

    return-void
.end method

.method static final synthetic a(ILcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v3, 0x7

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->d()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->e()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->g()Ljava/util/List;

    move-result-object v10

    move v2, p0

    invoke-static/range {v2 .. v10}, Lcom/google/android/play/core/splitinstall/c;->a(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    throw p0
.end method

.method private final declared-synchronized a(Lcom/google/android/play/core/splitinstall/a/j;)Lcom/google/android/play/core/splitinstall/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/a/a;->b()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/splitinstall/a/j;->a(Lcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static final synthetic a(Ljava/lang/Integer;IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Lcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;
    .locals 11

    if-nez p7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/android/play/core/splitinstall/c;->a(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    move v2, v1

    if-nez p3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->d()J

    move-result-wide v3

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_2
    move-wide v5, v3

    if-nez p4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->e()J

    move-result-wide v3

    goto :goto_3

    :cond_3
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_3
    move-wide v7, v3

    if-nez p5, :cond_4

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->f()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p5

    :goto_4
    if-nez p6, :cond_5

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->g()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    move v3, p1

    move v4, p2

    invoke-static/range {v2 .. v10}, Lcom/google/android/play/core/splitinstall/c;->a(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\.config\\."

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/play/core/splitinstall/a/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/a/a;->b(I)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;JZ)V

    return-void
.end method

.method private final a(Lcom/google/android/play/core/splitinstall/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/a;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/a/g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/splitinstall/a/g;-><init>(Lcom/google/android/play/core/splitinstall/a/a;Lcom/google/android/play/core/splitinstall/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final c()Lcom/google/android/play/core/splitinstall/w;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/a;->j:Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/ae;->c()Lcom/google/android/play/core/splitinstall/w;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Language information could not be found. Make sure you are using the target application context, not the tests context, and the app is built as a bundle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(I)Lcom/google/android/play/core/tasks/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/play/core/splitinstall/a/f;-><init>(I[B)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/a/j;)Lcom/google/android/play/core/splitinstall/c;

    new-instance v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/play/core/tasks/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/a/a;->b()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 v0, -0x4

    invoke-direct {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/b;)Lcom/google/android/play/core/tasks/d;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/b;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    :try_start_0
    new-instance v1, Lcom/google/android/play/core/splitinstall/a/e;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/a/e;-><init>(Lcom/google/android/play/core/splitinstall/b;)V

    invoke-direct {v9, v1}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/a/j;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/play/core/splitinstall/SplitInstallException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    iget-object v2, v0, Lcom/google/android/play/core/splitinstall/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v9, Lcom/google/android/play/core/splitinstall/a/a;->l:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "FakeSplitInstallManager"

    const-string v1, "Specified splits directory does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    invoke-direct {v9, v0}, Lcom/google/android/play/core/splitinstall/a/a;->c(I)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0

    :cond_1
    array-length v4, v3

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    :goto_1
    if-ge v8, v4, :cond_c

    aget-object v14, v3, v8

    invoke-static {v14}, Lcom/google/android/play/core/internal/x;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2000
    iget-object v6, v0, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v15}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v9, Lcom/google/android/play/core/splitinstall/a/a;->k:Lcom/google/android/play/core/internal/an;

    invoke-virtual {v7}, Lcom/google/android/play/core/internal/an;->a()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/play/core/splitinstall/a/a;->c()Lcom/google/android/play/core/splitinstall/w;

    move-result-object v7

    move-object/from16 v17, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v5, v3, v16

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/play/core/splitinstall/w;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move/from16 v4, v19

    goto :goto_2

    :cond_2
    move/from16 v19, v4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v18, v6

    const-string v6, "_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    move/from16 v20, v1

    const/4 v1, -0x1

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aget-object v7, v1, v6

    goto :goto_4

    :cond_3
    move/from16 v20, v1

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v18

    move/from16 v1, v20

    goto :goto_3

    :cond_4
    move/from16 v20, v1

    const/4 v6, 0x0

    iget-object v1, v9, Lcom/google/android/play/core/splitinstall/a/a;->o:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    invoke-interface {v5, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_7
    move/from16 v20, v1

    move-object/from16 v17, v3

    move/from16 v19, v4

    .line 3000
    :cond_8
    iget-object v1, v0, Lcom/google/android/play/core/splitinstall/b;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v9, Lcom/google/android/play/core/splitinstall/a/a;->n:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, ""

    const-string v5, "base"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/play/core/splitinstall/a/a;->c()Lcom/google/android/play/core/splitinstall/w;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/play/core/splitinstall/w;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2000
    :cond_a
    :goto_6
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v12, v3

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v19

    move/from16 v1, v20

    goto/16 :goto_1

    :cond_c
    move/from16 v20, v1

    .line 3000
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4000
    iget-object v3, v0, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "availableSplits "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " want "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/HashSet;

    .line 5000
    iget-object v3, v0, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, -0x2

    invoke-direct {v9, v0}, Lcom/google/android/play/core/splitinstall/a/a;->c(I)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0

    :cond_d
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6000
    iget-object v6, v0, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/play/core/splitinstall/a/a;->a(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    iget-object v1, v9, Lcom/google/android/play/core/splitinstall/a/a;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/play/core/splitinstall/a/d;

    invoke-direct {v2, v9, v11, v10}, Lcom/google/android/play/core/splitinstall/a/d;-><init>(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->a(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0

    :cond_e
    const/16 v0, -0x64

    :try_start_1
    invoke-direct {v9, v0}, Lcom/google/android/play/core/splitinstall/a/a;->c(I)Lcom/google/android/play/core/tasks/d;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/play/core/splitinstall/SplitInstallException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7000
    iget v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallException;->a:I

    invoke-direct {v9, v0}, Lcom/google/android/play/core/splitinstall/a/a;->c(I)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/a;->j:Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/ae;->b()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/a;->j:Lcom/google/android/play/core/splitinstall/ae;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/ae;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/a;->o:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method final a(Ljava/util/List;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/a;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/a/a;->o:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/play/core/splitinstall/a/a;->a(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    return-void
.end method

.method final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;JZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    move-object v8, p0

    iget-object v0, v8, Lcom/google/android/play/core/splitinstall/a/a;->f:Lcom/google/android/play/core/splitinstall/t;

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/t;->a()Lcom/google/android/play/core/splitinstall/u;

    move-result-object v9

    new-instance v10, Lcom/google/android/play/core/splitinstall/a/i;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/play/core/splitinstall/a/i;-><init>(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V

    move-object v0, p1

    invoke-interface {v9, p1, v10}, Lcom/google/android/play/core/splitinstall/u;->a(Ljava/util/List;Lcom/google/android/play/core/splitinstall/s;)V

    return-void
.end method

.method final a(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p0

    new-instance v9, Lcom/google/android/play/core/splitinstall/a/c;

    move-object v1, v9

    move-object/from16 v2, p6

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/play/core/splitinstall/a/c;-><init>(Ljava/lang/Integer;IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v9}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/a/j;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/play/core/splitinstall/a/a;->a(Lcom/google/android/play/core/splitinstall/c;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final a(Lcom/google/android/play/core/splitinstall/c;Landroid/app/Activity;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method final b()Lcom/google/android/play/core/splitinstall/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/a;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/c;

    return-object v0
.end method

.method final b(I)Z
    .locals 8

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/play/core/splitinstall/a/a;->a(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
