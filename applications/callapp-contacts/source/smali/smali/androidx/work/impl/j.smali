.class public Landroidx/work/impl/j;
.super Landroidx/work/u;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;

.field private static l:Landroidx/work/impl/j;

.field private static m:Landroidx/work/impl/j;

.field private static final n:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/Configuration;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Landroidx/work/impl/utils/b/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroidx/work/impl/d;

.field public g:Landroidx/work/impl/utils/e;

.field private i:Z

.field private j:Landroid/content/BroadcastReceiver$PendingResult;

.field private volatile k:Landroidx/work/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 83
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    sput-object v0, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    .line 101
    sput-object v0, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;)V
    .locals 2

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/work/q$a;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 217
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/work/impl/j;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 10

    .line 264
    invoke-direct {p0}, Landroidx/work/u;-><init>()V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    new-instance v1, Landroidx/work/k$a;

    invoke-virtual {p2}, Landroidx/work/Configuration;->getMinimumLoggingLevel()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/work/k$a;-><init>(I)V

    invoke-static {v1}, Landroidx/work/k;->a(Landroidx/work/k;)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/work/impl/e;

    .line 1778
    invoke-static {v0, p0}, Landroidx/work/impl/f;->a(Landroid/content/Context;Landroidx/work/impl/j;)Landroidx/work/impl/e;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroidx/work/impl/background/a/b;

    invoke-direct {v2, v0, p2, p3, p0}, Landroidx/work/impl/background/a/b;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/j;)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 1777
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 269
    new-instance v9, Landroidx/work/impl/d;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/d;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v3, p0

    .line 275
    invoke-direct/range {v3 .. v9}, Landroidx/work/impl/j;->a(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/Configuration;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;",
            "Landroidx/work/impl/d;",
            ")V"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Landroidx/work/u;-><init>()V

    .line 297
    invoke-direct/range {p0 .. p6}, Landroidx/work/impl/j;->a(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Z)V
    .locals 2

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    invoke-interface {p3}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/g;

    move-result-object v1

    .line 242
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/work/impl/j;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/Configuration;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;",
            "Landroidx/work/impl/d;",
            ")V"
        }
    .end annotation

    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 749
    iput-object p1, p0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    .line 750
    iput-object p2, p0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 751
    iput-object p3, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    .line 752
    iput-object p4, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 753
    iput-object p5, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 754
    iput-object p6, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 755
    new-instance p2, Landroidx/work/impl/utils/e;

    invoke-direct {p2, p4}, Landroidx/work/impl/utils/e;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, Landroidx/work/impl/j;->g:Landroidx/work/impl/utils/e;

    const/4 p2, 0x0

    .line 756
    iput-boolean p2, p0, Landroidx/work/impl/j;->i:Z

    .line 759
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 764
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/j;)V

    invoke-interface {p2, p3}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroidx/work/impl/j;
    .locals 2

    .line 146
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-static {}, Landroidx/work/impl/j;->e()Landroidx/work/impl/j;

    move-result-object v1

    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 150
    instance-of v1, p0, Landroidx/work/Configuration$Provider;

    if-eqz v1, :cond_0

    .line 151
    move-object v1, p0

    check-cast v1, Landroidx/work/Configuration$Provider;

    .line 153
    invoke-interface {v1}, Landroidx/work/Configuration$Provider;->getWorkManagerConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    .line 151
    invoke-static {p0, v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;Landroidx/work/Configuration;)V

    .line 154
    invoke-static {p0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 163
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroidx/work/Configuration;)V
    .locals 4

    .line 181
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-object v1, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    if-nez v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 192
    sget-object v1, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    if-nez v1, :cond_2

    .line 193
    new-instance v1, Landroidx/work/impl/j;

    new-instance v2, Landroidx/work/impl/utils/b/b;

    .line 196
    invoke-virtual {p1}, Landroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/utils/b/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/j;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/b/a;)V

    sput-object v1, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    .line 198
    :cond_2
    sget-object p0, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    sput-object p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    .line 200
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static e()Landroidx/work/impl/j;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    if-eqz v1, :cond_0

    .line 130
    monitor-exit v0

    return-object v1

    .line 133
    :cond_0
    sget-object v1, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()Landroidx/work/n;
    .locals 2

    .line 469
    invoke-static {p0}, Landroidx/work/impl/utils/a;->b(Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;

    move-result-object v0

    .line 470
    iget-object v1, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    invoke-interface {v1, v0}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 6055
    iget-object v0, v0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/c;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroidx/work/n;
    .locals 1

    .line 454
    invoke-static {p1, p0}, Landroidx/work/impl/utils/a;->a(Ljava/lang/String;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;

    move-result-object p1

    .line 455
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 5055
    iget-object p1, p1, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/c;

    return-object p1
.end method

.method public final a(Ljava/util/List;)Landroidx/work/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/v;",
            ">;)",
            "Landroidx/work/n;"
        }
    .end annotation

    .line 374
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Landroidx/work/impl/g;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/g;-><init>(Landroidx/work/impl/j;Ljava/util/List;)V

    .line 2183
    iget-boolean p1, v0, Landroidx/work/impl/g;->h:Z

    if-nez p1, :cond_0

    .line 2186
    new-instance p1, Landroidx/work/impl/utils/b;

    invoke-direct {p1, v0}, Landroidx/work/impl/utils/b;-><init>(Landroidx/work/impl/g;)V

    .line 2187
    iget-object v1, v0, Landroidx/work/impl/g;->b:Landroidx/work/impl/j;

    .line 2355
    iget-object v1, v1, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    .line 2187
    invoke-interface {v1, p1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 3107
    iget-object p1, p1, Landroidx/work/impl/utils/b;->a:Landroidx/work/impl/c;

    .line 2188
    iput-object p1, v0, Landroidx/work/impl/g;->i:Landroidx/work/n;

    goto :goto_0

    .line 2190
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object p1

    sget-object v1, Landroidx/work/impl/g;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/work/impl/g;->f:Ljava/util/List;

    const-string v5, ", "

    .line 2191
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2190
    invoke-virtual {p1, v1, v2}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    :goto_0
    iget-object p1, v0, Landroidx/work/impl/g;->i:Landroidx/work/n;

    return-object p1

    .line 375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/UUID;)Landroidx/work/n;
    .locals 1

    .line 447
    invoke-static {p1, p0}, Landroidx/work/impl/utils/a;->a(Ljava/util/UUID;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;

    move-result-object p1

    .line 448
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 4055
    iget-object p1, p1, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/c;

    return-object p1
.end method

.method public final a(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 723
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iput-object p1, p0, Landroidx/work/impl/j;->j:Landroid/content/BroadcastReceiver$PendingResult;

    .line 725
    iget-boolean v1, p0, Landroidx/work/impl/j;->i:Z

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 727
    iput-object p1, p0, Landroidx/work/impl/j;->j:Landroid/content/BroadcastReceiver$PendingResult;

    .line 729
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    .line 651
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    new-instance v1, Landroidx/work/impl/utils/h;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/h;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 652
    invoke-interface {v0, v1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Landroidx/work/a/a;
    .locals 7

    .line 616
    iget-object v0, p0, Landroidx/work/impl/j;->k:Landroidx/work/a/a;

    if-nez v0, :cond_2

    .line 617
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/j;->k:Landroidx/work/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "androidx.work.multiprocess.RemoteWorkManagerClient"

    .line 6789
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 6790
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroidx/work/impl/j;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object p0, v2, v6

    .line 6792
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/a/a;

    iput-object v1, p0, Landroidx/work/impl/j;->k:Landroidx/work/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6794
    :catchall_0
    :try_start_2
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 621
    :goto_0
    iget-object v1, p0, Landroidx/work/impl/j;->k:Landroidx/work/a/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 622
    invoke-virtual {v1}, Landroidx/work/Configuration;->getDefaultProcessName()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library"

    .line 625
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 630
    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/j;->k:Landroidx/work/a/a;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/util/List<",
            "Landroidx/work/t;",
            ">;>;"
        }
    .end annotation

    .line 550
    invoke-static {p0, p1}, Landroidx/work/impl/utils/i;->a(Landroidx/work/impl/j;Ljava/lang/String;)Landroidx/work/impl/utils/i;

    move-result-object p1

    .line 551
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    invoke-interface {v0}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/g;->execute(Ljava/lang/Runnable;)V

    .line 6059
    iget-object p1, p1, Landroidx/work/impl/utils/i;->a:Landroidx/work/impl/utils/a/c;

    return-object p1
.end method

.method public final c()V
    .locals 3

    .line 683
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 7307
    iget-object v0, p0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    .line 684
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;)V

    .line 7317
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 688
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->resetScheduledState()I

    .line 7327
    iget-object v0, p0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 8317
    iget-object v1, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 8337
    iget-object v2, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 693
    invoke-static {v0, v1, v2}, Landroidx/work/impl/f;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 662
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/b/a;

    new-instance v1, Landroidx/work/impl/utils/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/j;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 703
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 704
    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/j;->i:Z

    .line 705
    iget-object v1, p0, Landroidx/work/impl/j;->j:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 707
    iput-object v1, p0, Landroidx/work/impl/j;->j:Landroid/content/BroadcastReceiver$PendingResult;

    .line 709
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
