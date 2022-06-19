.class public Lp1/j;
.super Lo1/n;
.source "SourceFile"


# static fields
.field public static j:Lp1/j;

.field public static k:Lp1/j;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/a;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:La2/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lp1/c;

.field public g:Ly1/h;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lp1/j;->j:Lp1/j;

    .line 3
    sput-object v0, Lp1/j;->k:Lp1/j;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp1/j;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;La2/a;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    move-object v3, v9

    check-cast v3, La2/b;

    .line 4
    iget-object v3, v3, La2/b;->a:Ly1/j;

    .line 5
    sget v4, Landroidx/work/impl/WorkDatabase;->k:I

    .line 6
    const-class v4, Landroidx/work/impl/WorkDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ld1/f$a;

    invoke-direct {v0, v2, v4, v5}, Ld1/f$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-boolean v6, v0, Ld1/f$a;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lp1/i;->a:Ljava/lang/String;

    .line 10
    new-instance v0, Ld1/f$a;

    const-string v5, "androidx.work.workdb"

    invoke-direct {v0, v2, v4, v5}, Ld1/f$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    new-instance v4, Lp1/g;

    invoke-direct {v4, v2}, Lp1/g;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v4, v0, Ld1/f$a;->g:Lg1/b$c;

    .line 13
    :goto_0
    iput-object v3, v0, Ld1/f$a;->e:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v3, Lp1/h;

    invoke-direct {v3}, Lp1/h;-><init>()V

    .line 15
    iget-object v4, v0, Ld1/f$a;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Ld1/f$a;->d:Ljava/util/ArrayList;

    .line 17
    :cond_1
    iget-object v4, v0, Ld1/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v6, [Le1/a;

    .line 18
    sget-object v4, Landroidx/work/impl/a;->a:Le1/a;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 19
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    new-instance v4, Landroidx/work/impl/a$h;

    const/4 v7, 0x2

    const/4 v10, 0x3

    invoke-direct {v4, v2, v7, v10}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v5

    .line 20
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    sget-object v4, Landroidx/work/impl/a;->b:Le1/a;

    aput-object v4, v3, v5

    .line 21
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    sget-object v4, Landroidx/work/impl/a;->c:Le1/a;

    aput-object v4, v3, v5

    .line 22
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    new-instance v4, Landroidx/work/impl/a$h;

    const/4 v7, 0x5

    const/4 v10, 0x6

    invoke-direct {v4, v2, v7, v10}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v5

    .line 23
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    sget-object v4, Landroidx/work/impl/a;->d:Le1/a;

    aput-object v4, v3, v5

    .line 24
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    sget-object v4, Landroidx/work/impl/a;->e:Le1/a;

    aput-object v4, v3, v5

    .line 25
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    sget-object v4, Landroidx/work/impl/a;->f:Le1/a;

    aput-object v4, v3, v5

    .line 26
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    new-instance v4, Landroidx/work/impl/a$i;

    invoke-direct {v4, v2}, Landroidx/work/impl/a$i;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v5

    .line 27
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v3, v6, [Le1/a;

    new-instance v4, Landroidx/work/impl/a$h;

    const/16 v7, 0xa

    const/16 v10, 0xb

    invoke-direct {v4, v2, v7, v10}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v5

    .line 28
    invoke-virtual {v0, v3}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    new-array v2, v6, [Le1/a;

    sget-object v3, Landroidx/work/impl/a;->g:Le1/a;

    aput-object v3, v2, v5

    .line 29
    invoke-virtual {v0, v2}, Ld1/f$a;->a([Le1/a;)Ld1/f$a;

    .line 30
    iput-boolean v5, v0, Ld1/f$a;->i:Z

    .line 31
    iput-boolean v6, v0, Ld1/f$a;->j:Z

    .line 32
    iget-object v11, v0, Ld1/f$a;->c:Landroid/content/Context;

    if-eqz v11, :cond_10

    .line 33
    iget-object v2, v0, Ld1/f$a;->a:Ljava/lang/Class;

    if-eqz v2, :cond_f

    .line 34
    iget-object v2, v0, Ld1/f$a;->e:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_2

    iget-object v3, v0, Ld1/f$a;->f:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_2

    .line 35
    sget-object v2, Lm/a;->c:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Ld1/f$a;->f:Ljava/util/concurrent/Executor;

    iput-object v2, v0, Ld1/f$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 36
    iget-object v3, v0, Ld1/f$a;->f:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_3

    .line 37
    iput-object v2, v0, Ld1/f$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 38
    iget-object v2, v0, Ld1/f$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_4

    .line 39
    iput-object v2, v0, Ld1/f$a;->e:Ljava/util/concurrent/Executor;

    .line 40
    :cond_4
    :goto_1
    iget-object v2, v0, Ld1/f$a;->g:Lg1/b$c;

    if-nez v2, :cond_5

    .line 41
    new-instance v2, Lh1/d;

    invoke-direct {v2}, Lh1/d;-><init>()V

    iput-object v2, v0, Ld1/f$a;->g:Lg1/b$c;

    .line 42
    :cond_5
    new-instance v2, Ld1/a;

    iget-object v12, v0, Ld1/f$a;->b:Ljava/lang/String;

    iget-object v13, v0, Ld1/f$a;->g:Lg1/b$c;

    iget-object v14, v0, Ld1/f$a;->k:Ld1/f$c;

    iget-object v3, v0, Ld1/f$a;->d:Ljava/util/ArrayList;

    iget-boolean v4, v0, Ld1/f$a;->h:Z

    const-string v5, "activity"

    .line 43
    invoke-virtual {v11, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    if-eqz v5, :cond_6

    .line 44
    invoke-virtual {v5}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x3

    goto :goto_2

    :cond_6
    const/4 v5, 0x2

    .line 45
    :goto_2
    iget-object v6, v0, Ld1/f$a;->e:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Ld1/f$a;->f:Ljava/util/concurrent/Executor;

    const/16 v20, 0x0

    iget-boolean v15, v0, Ld1/f$a;->i:Z

    iget-boolean v10, v0, Ld1/f$a;->j:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v22, v10

    move-object v10, v2

    move/from16 v21, v15

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-direct/range {v10 .. v25}, Ld1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lg1/b$c;Ld1/f$c;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 46
    iget-object v0, v0, Ld1/f$a;->a:Ljava/lang/Class;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_3

    .line 50
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 51
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2e

    const/16 v13, 0x5f

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_Impl"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 52
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v7, v10

    goto :goto_4

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    :goto_4
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    check-cast v0, Ld1/f;

    .line 56
    invoke-virtual {v0, v2}, Ld1/f;->f(Ld1/a;)Lg1/b;

    move-result-object v7

    iput-object v7, v0, Ld1/f;->c:Lg1/b;

    .line 57
    instance-of v10, v7, Ld1/i;

    if-eqz v10, :cond_9

    .line 58
    move-object v10, v7

    check-cast v10, Ld1/i;

    .line 59
    iput-object v2, v10, Ld1/i;->f:Ld1/a;

    :cond_9
    const/4 v2, 0x3

    if-ne v5, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    .line 60
    :goto_5
    invoke-interface {v7, v2}, Lg1/b;->setWriteAheadLoggingEnabled(Z)V

    .line 61
    iput-object v3, v0, Ld1/f;->g:Ljava/util/List;

    .line 62
    iput-object v6, v0, Ld1/f;->b:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 64
    iput-boolean v4, v0, Ld1/f;->e:Z

    .line 65
    iput-boolean v2, v0, Ld1/f;->f:Z

    .line 66
    move-object v10, v0

    check-cast v10, Landroidx/work/impl/WorkDatabase;

    .line 67
    invoke-direct/range {p0 .. p0}, Lo1/n;-><init>()V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    new-instance v0, Lo1/h$a;

    .line 70
    iget v3, v8, Landroidx/work/a;->f:I

    .line 71
    invoke-direct {v0, v3}, Lo1/h$a;-><init>(I)V

    .line 72
    const-class v3, Lo1/h;

    monitor-enter v3

    .line 73
    :try_start_1
    sput-object v0, Lo1/h;->a:Lo1/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    monitor-exit v3

    const/4 v0, 0x2

    new-array v3, v0, [Lp1/d;

    .line 75
    sget-object v0, Lp1/e;->a:Ljava/lang/String;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_b

    .line 77
    new-instance v0, Ls1/b;

    invoke-direct {v0, v2, v1}, Ls1/b;-><init>(Landroid/content/Context;Lp1/j;)V

    .line 78
    const-class v4, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Ly1/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 79
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v4

    sget-object v5, Lp1/e;->a:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    const-string v7, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v4, v5, v7, v6}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    :try_start_2
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 80
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 81
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/d;

    .line 83
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v4

    sget-object v5, Lp1/e;->a:Ljava/lang/String;

    const-string v6, "Created %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string v11, "androidx.work.impl.background.gcm.GcmScheduler"

    const/4 v12, 0x0

    aput-object v11, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 84
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v4

    sget-object v5, Lp1/e;->a:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Throwable;

    const/4 v11, 0x0

    aput-object v0, v7, v11

    const-string v0, "Unable to create GCM Scheduler"

    invoke-virtual {v4, v5, v0, v7}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_6
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_c

    .line 85
    new-instance v0, Lr1/b;

    invoke-direct {v0, v2}, Lr1/b;-><init>(Landroid/content/Context;)V

    .line 86
    const-class v6, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {v2, v6, v4}, Ly1/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 87
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v6

    sget-object v7, Lp1/e;->a:Ljava/lang/String;

    new-array v11, v5, [Ljava/lang/Throwable;

    const-string v12, "Created SystemAlarmScheduler"

    invoke-virtual {v6, v7, v12, v11}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    aput-object v0, v3, v5

    .line 88
    new-instance v0, Lq1/c;

    invoke-direct {v0, v2, v8, v9, v1}, Lq1/c;-><init>(Landroid/content/Context;Landroidx/work/a;La2/a;Lp1/j;)V

    aput-object v0, v3, v4

    .line 89
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 90
    new-instance v11, Lp1/c;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v10

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lp1/c;-><init>(Landroid/content/Context;Landroidx/work/a;La2/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 92
    iput-object v2, v1, Lp1/j;->a:Landroid/content/Context;

    .line 93
    iput-object v8, v1, Lp1/j;->b:Landroidx/work/a;

    .line 94
    iput-object v9, v1, Lp1/j;->d:La2/a;

    .line 95
    iput-object v10, v1, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 96
    iput-object v0, v1, Lp1/j;->e:Ljava/util/List;

    .line 97
    iput-object v11, v1, Lp1/j;->f:Lp1/c;

    .line 98
    new-instance v0, Ly1/h;

    invoke-direct {v0, v10}, Ly1/h;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v0, v1, Lp1/j;->g:Ly1/h;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, v1, Lp1/j;->h:Z

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_e

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    .line 101
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_e
    :goto_8
    iget-object v0, v1, Lp1/j;->d:La2/a;

    new-instance v3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v3, v2, v1}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lp1/j;)V

    check-cast v0, La2/b;

    .line 103
    iget-object v0, v0, La2/b;->a:Ly1/j;

    invoke-virtual {v0, v3}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 104
    monitor-exit v3

    throw v2

    .line 105
    :catch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to create an instance of "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :catch_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot access the constructor"

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :catch_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot find implementation for "

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)Lp1/j;
    .locals 2

    .line 1
    sget-object v0, Lp1/j;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lp1/j;->j:Lp1/j;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lp1/j;->k:Lp1/j;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Landroidx/work/a$b;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    check-cast v1, Landroidx/work/a$b;

    .line 9
    invoke-interface {v1}, Landroidx/work/a$b;->a()Landroidx/work/a;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Lp1/j;->d(Landroid/content/Context;Landroidx/work/a;)V

    .line 11
    invoke-static {p0}, Lp1/j;->c(Landroid/content/Context;)Lp1/j;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;Landroidx/work/a;)V
    .locals 4

    .line 1
    sget-object v0, Lp1/j;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lp1/j;->j:Lp1/j;

    if-eqz v1, :cond_1

    sget-object v2, Lp1/j;->k:Lp1/j;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Lp1/j;->k:Lp1/j;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lp1/j;

    new-instance v2, La2/b;

    .line 7
    iget-object v3, p1, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {v2, v3}, La2/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Lp1/j;-><init>(Landroid/content/Context;Landroidx/work/a;La2/a;)V

    sput-object v1, Lp1/j;->k:Lp1/j;

    .line 9
    :cond_2
    sget-object p0, Lp1/j;->k:Lp1/j;

    sput-object p0, Lp1/j;->j:Lp1/j;

    .line 10
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


# virtual methods
.method public a(Ljava/util/List;)Lo1/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo1/o;",
            ">;)",
            "Lo1/k;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lp1/f;

    invoke-direct {v0, p0, p1}, Lp1/f;-><init>(Lp1/j;Ljava/util/List;)V

    .line 3
    iget-boolean p1, v0, Lp1/f;->h:Z

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ly1/e;

    invoke-direct {p1, v0}, Ly1/e;-><init>(Lp1/f;)V

    .line 5
    iget-object v1, p0, Lp1/j;->d:La2/a;

    .line 6
    check-cast v1, La2/b;

    .line 7
    iget-object v1, v1, La2/b;->a:Ly1/j;

    invoke-virtual {v1, p1}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p1, Ly1/e;->b:Lp1/b;

    .line 9
    iput-object p1, v0, Lp1/f;->i:Lo1/k;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object p1

    sget-object v1, Lp1/f;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lp1/f;->e:Ljava/util/List;

    const-string v4, ", "

    .line 11
    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 12
    invoke-virtual {p1, v1, v2, v3}, Lo1/h;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    iget-object p1, v0, Lp1/f;->i:Lo1/k;

    return-object p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 2

    .line 1
    sget-object v0, Lp1/j;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lp1/j;->h:Z

    .line 3
    iget-object v1, p0, Lp1/j;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lp1/j;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
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

.method public f()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lp1/j;->a:Landroid/content/Context;

    .line 3
    sget-object v1, Ls1/b;->e:Ljava/lang/String;

    const-string v1, "jobscheduler"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, v1}, Ls1/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 8
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Ls1/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object v0

    check-cast v0, Lx1/r;

    .line 11
    iget-object v1, v0, Lx1/r;->a:Ld1/f;

    invoke-virtual {v1}, Ld1/f;->b()V

    .line 12
    iget-object v1, v0, Lx1/r;->i:Ld1/j;

    invoke-virtual {v1}, Ld1/j;->a()Lh1/f;

    move-result-object v1

    .line 13
    iget-object v2, v0, Lx1/r;->a:Ld1/f;

    invoke-virtual {v2}, Ld1/f;->c()V

    .line 14
    :try_start_0
    invoke-virtual {v1}, Lh1/f;->d()I

    .line 15
    iget-object v2, v0, Lx1/r;->a:Ld1/f;

    invoke-virtual {v2}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v2, v0, Lx1/r;->a:Ld1/f;

    invoke-virtual {v2}, Ld1/f;->g()V

    .line 17
    iget-object v0, v0, Lx1/r;->i:Ld1/j;

    .line 18
    iget-object v2, v0, Ld1/j;->c:Lh1/f;

    if-ne v1, v2, :cond_1

    .line 19
    iget-object v0, v0, Ld1/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    :cond_1
    iget-object v0, p0, Lp1/j;->b:Landroidx/work/a;

    .line 21
    iget-object v1, p0, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 22
    iget-object v2, p0, Lp1/j;->e:Ljava/util/List;

    .line 23
    invoke-static {v0, v1, v2}, Lp1/e;->a(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    .line 24
    iget-object v3, v0, Lx1/r;->a:Ld1/f;

    invoke-virtual {v3}, Ld1/f;->g()V

    .line 25
    iget-object v0, v0, Lx1/r;->i:Ld1/j;

    invoke-virtual {v0, v1}, Ld1/j;->c(Lh1/f;)V

    .line 26
    throw v2
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/j;->d:La2/a;

    new-instance v1, Ly1/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ly1/l;-><init>(Lp1/j;Ljava/lang/String;Z)V

    check-cast v0, La2/b;

    .line 2
    iget-object p1, v0, La2/b;->a:Ly1/j;

    invoke-virtual {p1, v1}, Ly1/j;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
