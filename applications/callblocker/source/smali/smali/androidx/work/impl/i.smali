.class public Landroidx/work/impl/i;
.super Landroidx/work/t;
.source "WorkManagerImpl.java"


# static fields
.field private static j:Landroidx/work/impl/i;

.field private static k:Landroidx/work/impl/i;

.field private static final l:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/b;

.field private c:Landroidx/work/impl/WorkDatabase;

.field private d:Landroidx/work/impl/utils/b/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/work/impl/c;

.field private g:Landroidx/work/impl/utils/e;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    sput-object v0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    .line 92
    sput-object v0, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;)V
    .locals 2

    .prologue
    .line 207
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/work/q$a;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 207
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/work/impl/i;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Z)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 14

    .prologue
    .line 254
    invoke-direct {p0}, Landroidx/work/t;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 256
    new-instance v2, Landroidx/work/l$a;

    invoke-virtual/range {p2 .. p2}, Landroidx/work/b;->e()I

    move-result v3

    invoke-direct {v2, v3}, Landroidx/work/l$a;-><init>(I)V

    invoke-static {v2}, Landroidx/work/l;->a(Landroidx/work/l;)V

    .line 257
    move-object/from16 v0, p3

    invoke-virtual {p0, v1, v0}, Landroidx/work/impl/i;->a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Ljava/util/List;

    move-result-object v6

    .line 258
    new-instance v1, Landroidx/work/impl/c;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/c;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v6

    move-object v13, v1

    .line 264
    invoke-direct/range {v7 .. v13}, Landroidx/work/impl/i;->a(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/c;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Z)V
    .locals 2

    .prologue
    .line 229
    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    invoke-interface {p3}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/f;

    move-result-object v1

    .line 232
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 229
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/work/impl/i;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;)V

    .line 237
    return-void
.end method

.method public static a()Landroidx/work/impl/i;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    sget-object v1, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    monitor-exit v1

    .line 123
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    monitor-exit v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/b;",
            "Landroidx/work/impl/utils/b/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;",
            "Landroidx/work/impl/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 687
    iput-object v0, p0, Landroidx/work/impl/i;->a:Landroid/content/Context;

    .line 688
    iput-object p2, p0, Landroidx/work/impl/i;->b:Landroidx/work/b;

    .line 689
    iput-object p3, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    .line 690
    iput-object p4, p0, Landroidx/work/impl/i;->c:Landroidx/work/impl/WorkDatabase;

    .line 691
    iput-object p5, p0, Landroidx/work/impl/i;->e:Ljava/util/List;

    .line 692
    iput-object p6, p0, Landroidx/work/impl/i;->f:Landroidx/work/impl/c;

    .line 693
    new-instance v1, Landroidx/work/impl/utils/e;

    invoke-direct {v1, p4}, Landroidx/work/impl/utils/e;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v1, p0, Landroidx/work/impl/i;->g:Landroidx/work/impl/utils/e;

    .line 694
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/work/impl/i;->h:Z

    .line 697
    iget-object v1, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    new-instance v2, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v2, v0, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/i;)V

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method private b(Ljava/lang/String;Landroidx/work/f;Landroidx/work/o;)Landroidx/work/impl/f;
    .locals 3

    .prologue
    .line 418
    sget-object v0, Landroidx/work/f;->b:Landroidx/work/f;

    if-ne p2, v0, :cond_0

    .line 419
    sget-object v0, Landroidx/work/g;->b:Landroidx/work/g;

    .line 423
    :goto_0
    new-instance v1, Landroidx/work/impl/f;

    .line 427
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, p1, v0, v2}, Landroidx/work/impl/f;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)V

    .line 423
    return-object v1

    .line 421
    :cond_0
    sget-object v0, Landroidx/work/g;->a:Landroidx/work/g;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroidx/work/impl/i;
    .locals 4

    .prologue
    .line 136
    sget-object v3, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v3

    .line 137
    :try_start_0
    invoke-static {}, Landroidx/work/impl/i;->a()Landroidx/work/impl/i;

    move-result-object v1

    .line 138
    if-nez v1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 140
    instance-of v1, v2, Landroidx/work/b$b;

    if-eqz v1, :cond_1

    .line 141
    move-object v0, v2

    check-cast v0, Landroidx/work/b$b;

    move-object v1, v0

    .line 143
    invoke-interface {v1}, Landroidx/work/b$b;->a()Landroidx/work/b;

    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Landroidx/work/impl/i;->b(Landroid/content/Context;Landroidx/work/b;)V

    .line 144
    invoke-static {v2}, Landroidx/work/impl/i;->b(Landroid/content/Context;)Landroidx/work/impl/i;

    move-result-object v1

    .line 153
    :cond_0
    monitor-exit v3

    return-object v1

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Landroid/content/Context;Landroidx/work/b;)V
    .locals 5

    .prologue
    .line 171
    sget-object v1, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 180
    :cond_0
    :try_start_1
    sget-object v0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    if-nez v0, :cond_2

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    sget-object v2, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Landroidx/work/impl/i;

    new-instance v3, Landroidx/work/impl/utils/b/b;

    .line 186
    invoke-virtual {p1}, Landroidx/work/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/work/impl/utils/b/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v2, v0, p1, v3}, Landroidx/work/impl/i;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/b/a;)V

    sput-object v2, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    .line 188
    :cond_1
    sget-object v0, Landroidx/work/impl/i;->k:Landroidx/work/impl/i;

    sput-object v0, Landroidx/work/impl/i;->j:Landroidx/work/impl/i;

    .line 190
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/work/f;Landroidx/work/o;)Landroidx/work/n;
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/i;->b(Ljava/lang/String;Landroidx/work/f;Landroidx/work/o;)Landroidx/work/impl/f;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroidx/work/impl/f;->i()Landroidx/work/n;

    move-result-object v0

    .line 406
    return-object v0
.end method

.method public a(Ljava/util/UUID;)Landroidx/work/n;
    .locals 2

    .prologue
    .line 432
    invoke-static {p1, p0}, Landroidx/work/impl/utils/a;->a(Ljava/util/UUID;Landroidx/work/impl/i;)Landroidx/work/impl/utils/a;

    move-result-object v0

    .line 433
    iget-object v1, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    invoke-interface {v1, v0}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 434
    invoke-virtual {v0}, Landroidx/work/impl/utils/a;->a()Landroidx/work/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/impl/utils/b/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/work/impl/d;

    const/4 v1, 0x0

    .line 710
    invoke-static {p1, p0}, Landroidx/work/impl/e;->a(Landroid/content/Context;Landroidx/work/impl/i;)Landroidx/work/impl/d;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroidx/work/impl/background/a/a;

    invoke-direct {v2, p1, p2, p0}, Landroidx/work/impl/background/a/a;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;Landroidx/work/impl/i;)V

    aput-object v2, v0, v1

    .line 709
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .prologue
    .line 661
    sget-object v1, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iput-object p1, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 663
    iget-boolean v0, p0, Landroidx/work/impl/i;->h:Z

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 667
    :cond_0
    monitor-exit v1

    .line 668
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/i;->a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 578
    return-void
.end method

.method public a(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    new-instance v1, Landroidx/work/impl/utils/g;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/g;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 590
    invoke-interface {v0, v1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroidx/work/impl/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    new-instance v1, Landroidx/work/impl/utils/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/h;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public c()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroidx/work/impl/i;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    new-instance v1, Landroidx/work/impl/utils/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/h;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public d()Landroidx/work/b;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroidx/work/impl/i;->b:Landroidx/work/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Landroidx/work/impl/i;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Landroidx/work/impl/c;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroidx/work/impl/i;->f:Landroidx/work/impl/c;

    return-object v0
.end method

.method public g()Landroidx/work/impl/utils/b/a;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroidx/work/impl/i;->d:Landroidx/work/impl/utils/b/a;

    return-object v0
.end method

.method public h()Landroidx/work/impl/utils/e;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroidx/work/impl/i;->g:Landroidx/work/impl/utils/e;

    return-object v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 622
    invoke-virtual {p0}, Landroidx/work/impl/i;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;)V

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/b/q;->b()I

    .line 631
    invoke-virtual {p0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/i;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 632
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 641
    sget-object v1, Landroidx/work/impl/i;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroidx/work/impl/i;->h:Z

    .line 643
    iget-object v0, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 647
    :cond_0
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
