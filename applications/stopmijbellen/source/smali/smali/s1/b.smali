.class public Ls1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/d;


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/job/JobScheduler;

.field public final c:Lp1/j;

.field public final d:Ls1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls1/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp1/j;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Ls1/a;

    invoke-direct {v1, p1}, Ls1/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ls1/b;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ls1/b;->c:Lp1/j;

    .line 5
    iput-object v0, p0, Ls1/b;->b:Landroid/app/job/JobScheduler;

    .line 6
    iput-object v1, p0, Ls1/b;->d:Ls1/a;

    return-void
.end method

.method public static a(Landroid/app/job/JobScheduler;I)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Ls1/b;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 5
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v5

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ls1/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 4
    invoke-static {v0}, Ls1/b;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v2, Ls1/b;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, p1, v3}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static g(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/b;->a:Landroid/content/Context;

    iget-object v1, p0, Ls1/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Ls1/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Ls1/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Ls1/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ls1/b;->c:Lp1/j;

    .line 6
    iget-object v0, v0, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lx1/h;

    move-result-object v0

    .line 8
    check-cast v0, Lx1/i;

    invoke-virtual {v0, p1}, Lx1/i;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs d([Lx1/p;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ls1/b;->c:Lp1/j;

    .line 2
    iget-object v0, v0, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    new-instance v1, Ly1/f;

    invoke-direct {v1, v0}, Ly1/f;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p1, v4

    .line 5
    invoke-virtual {v0}, Ld1/f;->c()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object v6

    iget-object v7, v5, Lx1/p;->a:Ljava/lang/String;

    check-cast v6, Lx1/r;

    invoke-virtual {v6, v7}, Lx1/r;->i(Ljava/lang/String;)Lx1/p;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Skipping scheduling "

    if-nez v6, :cond_0

    .line 7
    :try_start_1
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v6

    sget-object v8, Ls1/b;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lx1/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it\'s no longer in the DB"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v5, v7}, Lo1/h;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {v0}, Ld1/f;->k()V

    goto/16 :goto_3

    .line 9
    :cond_0
    iget-object v6, v6, Lx1/p;->b:Lo1/m;

    sget-object v8, Lo1/m;->a:Lo1/m;

    if-eq v6, v8, :cond_1

    .line 10
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v6

    sget-object v8, Ls1/b;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lx1/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it is no longer enqueued"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v5, v7}, Lo1/h;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v0}, Ld1/f;->k()V

    goto/16 :goto_3

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lx1/h;

    move-result-object v6

    iget-object v7, v5, Lx1/p;->a:Ljava/lang/String;

    .line 13
    check-cast v6, Lx1/i;

    invoke-virtual {v6, v7}, Lx1/i;->a(Ljava/lang/String;)Lx1/g;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 14
    iget v7, v6, Lx1/g;->b:I

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ls1/b;->c:Lp1/j;

    .line 15
    iget-object v7, v7, Lp1/j;->b:Landroidx/work/a;

    .line 16
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Ls1/b;->c:Lp1/j;

    .line 17
    iget-object v7, v7, Lp1/j;->b:Landroidx/work/a;

    .line 18
    iget v7, v7, Landroidx/work/a;->g:I

    .line 19
    invoke-virtual {v1, v3, v7}, Ly1/f;->b(II)I

    move-result v7

    :goto_1
    if-nez v6, :cond_3

    .line 20
    new-instance v6, Lx1/g;

    iget-object v8, v5, Lx1/p;->a:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lx1/g;-><init>(Ljava/lang/String;I)V

    .line 21
    iget-object v8, p0, Ls1/b;->c:Lp1/j;

    .line 22
    iget-object v8, v8, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 23
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->n()Lx1/h;

    move-result-object v8

    .line 24
    check-cast v8, Lx1/i;

    invoke-virtual {v8, v6}, Lx1/i;->b(Lx1/g;)V

    .line 25
    :cond_3
    invoke-virtual {p0, v5, v7}, Ls1/b;->h(Lx1/p;I)V

    .line 26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v6, v8, :cond_6

    .line 27
    iget-object v6, p0, Ls1/b;->a:Landroid/content/Context;

    iget-object v8, p0, Ls1/b;->b:Landroid/app/job/JobScheduler;

    iget-object v9, v5, Lx1/p;->a:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Ls1/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 29
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 31
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 32
    :cond_5
    iget-object v6, p0, Ls1/b;->c:Lp1/j;

    .line 33
    iget-object v6, v6, Lp1/j;->b:Landroidx/work/a;

    .line 34
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Ls1/b;->c:Lp1/j;

    .line 35
    iget-object v6, v6, Lp1/j;->b:Landroidx/work/a;

    .line 36
    iget v6, v6, Landroidx/work/a;->g:I

    .line 37
    invoke-virtual {v1, v3, v6}, Ly1/f;->b(II)I

    move-result v6

    .line 38
    :goto_2
    invoke-virtual {p0, v5, v6}, Ls1/b;->h(Lx1/p;I)V

    .line 39
    :cond_6
    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_3
    invoke-virtual {v0}, Ld1/f;->g()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ld1/f;->g()V

    .line 41
    throw p1

    :cond_7
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(Lx1/p;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v0, v1, Ls1/b;->d:Ls1/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lx1/p;->j:Lo1/b;

    .line 3
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 4
    iget-object v5, v2, Lx1/p;->a:Ljava/lang/String;

    const-string v6, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v4, v6, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lx1/p;->c()Z

    move-result v5

    const-string v6, "EXTRA_IS_PERIODIC"

    invoke-virtual {v4, v6, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    iget-object v0, v0, Ls1/a;->a:Landroid/content/ComponentName;

    move/from16 v6, p2

    invoke-direct {v5, v6, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 7
    iget-boolean v0, v3, Lo1/b;->b:Z

    .line 8
    invoke-virtual {v5, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 9
    iget-boolean v5, v3, Lo1/b;->c:Z

    .line 10
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 12
    iget-object v4, v3, Lo1/b;->a:Lo1/i;

    .line 13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v11, 0x1e

    const/16 v12, 0x1a

    const/16 v13, 0x18

    if-lt v5, v11, :cond_0

    sget-object v11, Lo1/i;->f:Lo1/i;

    if-ne v4, v11, :cond_0

    .line 14
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v11, 0x19

    .line 15
    invoke-virtual {v4, v11}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    .line 18
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v14, 0x4

    if-eqz v11, :cond_6

    if-eq v11, v9, :cond_5

    if-eq v11, v10, :cond_4

    if-eq v11, v7, :cond_2

    if-eq v11, v14, :cond_1

    goto :goto_0

    :cond_1
    if-lt v5, v12, :cond_3

    goto :goto_2

    :cond_2
    if-lt v5, v13, :cond_3

    const/4 v14, 0x3

    goto :goto_2

    .line 19
    :cond_3
    :goto_0
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v11

    sget-object v14, Ls1/a;->b:Ljava/lang/String;

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v4, v15, v8

    const-string v4, "API version too low. Cannot convert network type value %s"

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v15, v8, [Ljava/lang/Throwable;

    invoke-virtual {v11, v14, v4, v15}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const/4 v14, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 20
    :goto_2
    invoke-virtual {v0, v14}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 21
    :goto_3
    iget-boolean v4, v3, Lo1/b;->c:Z

    if-nez v4, :cond_8

    .line 22
    iget v4, v2, Lx1/p;->l:I

    if-ne v4, v10, :cond_7

    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    .line 23
    :goto_4
    iget-wide v14, v2, Lx1/p;->m:J

    invoke-virtual {v0, v14, v15, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 24
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lx1/p;->a()J

    move-result-wide v14

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v10, 0x0

    .line 26
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    const/16 v4, 0x1c

    if-gt v5, v4, :cond_9

    .line 27
    invoke-virtual {v0, v14, v15}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    :cond_9
    cmp-long v4, v14, v10

    if-lez v4, :cond_a

    .line 28
    invoke-virtual {v0, v14, v15}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    .line 29
    :cond_a
    iget-boolean v4, v2, Lx1/p;->q:Z

    if-nez v4, :cond_b

    .line 30
    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    :cond_b
    :goto_5
    if-lt v5, v13, :cond_d

    .line 31
    invoke-virtual {v3}, Lo1/b;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 32
    iget-object v4, v3, Lo1/b;->h:Lo1/c;

    .line 33
    iget-object v4, v4, Lo1/c;->a:Ljava/util/Set;

    .line 34
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo1/c$a;

    .line 35
    iget-boolean v10, v5, Lo1/c$a;->b:Z

    .line 36
    new-instance v11, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 37
    iget-object v5, v5, Lo1/c$a;->a:Landroid/net/Uri;

    .line 38
    invoke-direct {v11, v5, v10}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 39
    invoke-virtual {v0, v11}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_6

    .line 40
    :cond_c
    iget-wide v4, v3, Lo1/b;->f:J

    .line 41
    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 42
    iget-wide v4, v3, Lo1/b;->g:J

    .line 43
    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 44
    :cond_d
    invoke-virtual {v0, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_e

    .line 46
    iget-boolean v4, v3, Lo1/b;->d:Z

    .line 47
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 48
    iget-boolean v3, v3, Lo1/b;->e:Z

    .line 49
    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 50
    :cond_e
    iget v3, v2, Lx1/p;->k:I

    if-lez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    .line 51
    :goto_7
    invoke-static {}, Li0/a;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, v2, Lx1/p;->q:Z

    if-eqz v4, :cond_10

    if-nez v3, :cond_10

    .line 52
    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 53
    :cond_10
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 54
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v3

    sget-object v5, Ls1/b;->e:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v11, v2, Lx1/p;->a:Ljava/lang/String;

    aput-object v11, v10, v8

    .line 55
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const-string v11, "Scheduling work ID %s Job ID %s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Throwable;

    .line 56
    invoke-virtual {v3, v5, v10, v11}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 57
    :try_start_0
    iget-object v3, v1, Ls1/b;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v3, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_11

    .line 58
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    const-string v3, "Unable to schedule work ID %s"

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v2, Lx1/p;->a:Ljava/lang/String;

    aput-object v11, v10, v8

    .line 59
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v10, v8, [Ljava/lang/Throwable;

    invoke-virtual {v0, v5, v3, v10}, Lo1/h;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v0, v2, Lx1/p;->q:Z

    if-eqz v0, :cond_11

    iget v0, v2, Lx1/p;->r:I

    if-ne v0, v9, :cond_11

    .line 61
    iput-boolean v8, v2, Lx1/p;->q:Z

    const-string v0, "Scheduling a non-expedited job (work ID %s)"

    new-array v3, v9, [Ljava/lang/Object;

    .line 62
    iget-object v10, v2, Lx1/p;->a:Ljava/lang/String;

    aput-object v10, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v3

    new-array v10, v8, [Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v0, v10}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual/range {p0 .. p2}, Ls1/b;->h(Lx1/p;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 65
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v3

    sget-object v4, Ls1/b;->e:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v8

    const-string v2, "Unable to schedule %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Throwable;

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v2, v5}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    return-void

    :catch_0
    move-exception v0

    .line 66
    iget-object v2, v1, Ls1/b;->a:Landroid/content/Context;

    iget-object v3, v1, Ls1/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v2, v3}, Ls1/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    .line 68
    :goto_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    iget-object v2, v1, Ls1/b;->c:Lp1/j;

    .line 70
    iget-object v2, v2, Lp1/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 71
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object v2

    check-cast v2, Lx1/r;

    invoke-virtual {v2}, Lx1/r;->e()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    iget-object v2, v1, Ls1/b;->c:Lp1/j;

    .line 72
    iget-object v2, v2, Lp1/j;->b:Landroidx/work/a;

    .line 73
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_13

    .line 74
    iget v2, v2, Landroidx/work/a;->h:I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    goto :goto_a

    :cond_13
    const/4 v4, 0x2

    .line 75
    iget v2, v2, Landroidx/work/a;->h:I

    .line 76
    :goto_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 77
    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v3

    sget-object v4, Ls1/b;->e:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v2, v5}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 79
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
