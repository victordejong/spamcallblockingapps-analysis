.class public final Landroidx/work/impl/background/systemjob/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/e;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/job/JobScheduler;

.field private final d:Landroidx/work/impl/j;

.field private final e:Landroidx/work/impl/background/systemjob/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    .line 61
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/j;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroidx/work/impl/background/systemjob/a;

    invoke-direct {v1, p1}, Landroidx/work/impl/background/systemjob/a;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/work/impl/background/systemjob/b;-><init>(Landroid/content/Context;Landroidx/work/impl/j;Landroid/app/job/JobScheduler;Landroidx/work/impl/background/systemjob/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/j;Landroid/app/job/JobScheduler;Landroidx/work/impl/background/systemjob/a;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 83
    iput-object p3, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    .line 84
    iput-object p4, p0, Landroidx/work/impl/background/systemjob/b;->e:Landroidx/work/impl/background/systemjob/a;

    return-void
.end method

.method private static a(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 394
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 396
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
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

.method private static a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
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

    .line 341
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 344
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, p1, v3}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
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

    .line 356
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
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

    .line 375
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 381
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
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

    .line 384
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static a(Landroid/app/job/JobScheduler;I)V
    .locals 6

    .line 233
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 236
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 237
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v5

    .line 236
    invoke-virtual {v0, v1, p1, v2}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p0, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 254
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 256
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroidx/work/impl/model/WorkSpec;I)V
    .locals 5

    .line 181
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->e:Landroidx/work/impl/background/systemjob/a;

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/background/systemjob/a;->a(Landroidx/work/impl/model/WorkSpec;I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 182
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 184
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string p2, "Scheduling work ID %s Job ID %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    :try_start_0
    iget-object p2, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 207
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "Unable to schedule %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, p1, v2}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 190
    iget-object p2, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-static {p2, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 191
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 193
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    iget-object p2, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 5317
    iget-object p2, p2, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 198
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p2

    invoke-interface {p2}, Landroidx/work/impl/model/WorkSpecDao;->getScheduledWork()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    iget-object p2, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 5327
    iget-object p2, p2, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 199
    invoke-virtual {p2}, Landroidx/work/Configuration;->getMaxSchedulerLimit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 193
    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, v2}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroidx/work/impl/j;)Z
    .locals 7

    const-string v0, "jobscheduler"

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 282
    invoke-static {p0, v0}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    .line 7317
    iget-object v1, p1, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 284
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/model/SystemIdInfoDao;->getWorkSpecIds()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 287
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_2

    .line 288
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 290
    invoke-static {v3}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_1

    .line 303
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_6

    .line 8317
    iget-object p0, p1, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 313
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 315
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p1

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 322
    invoke-interface {p1, v1, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    goto :goto_2

    .line 324
    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->f()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 327
    throw p1

    :cond_6
    :goto_3
    return v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 213
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
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

    .line 216
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 6317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 221
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v0

    .line 222
    invoke-interface {v0, p1}, Landroidx/work/impl/model/SystemIdInfoDao;->removeSystemIdInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final varargs a([Landroidx/work/impl/model/WorkSpec;)V
    .locals 10

    .line 89
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 1317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 90
    new-instance v1, Landroidx/work/impl/utils/c;

    invoke-direct {v1, v0}, Landroidx/work/impl/utils/c;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 92
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p1, v4

    .line 93
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 95
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v6

    iget-object v7, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Skipping scheduling "

    if-nez v6, :cond_0

    .line 97
    :try_start_1
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v6

    sget-object v8, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it\'s no longer in the DB"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :goto_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    goto/16 :goto_4

    .line 106
    :cond_0
    :try_start_2
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    sget-object v8, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    if-eq v6, v8, :cond_1

    .line 107
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v6

    sget-object v8, Landroidx/work/impl/background/systemjob/b;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it is no longer enqueued"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v6

    iget-object v7, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 119
    invoke-interface {v6, v7}, Landroidx/work/impl/model/SystemIdInfoDao;->getSystemIdInfo(Ljava/lang/String;)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 121
    iget v7, v6, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 1327
    iget-object v7, v7, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 122
    invoke-virtual {v7}, Landroidx/work/Configuration;->getMinJobSchedulerId()I

    move-result v7

    iget-object v8, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 2327
    iget-object v8, v8, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 123
    invoke-virtual {v8}, Landroidx/work/Configuration;->getMaxJobSchedulerId()I

    move-result v8

    .line 121
    invoke-virtual {v1, v7, v8}, Landroidx/work/impl/utils/c;->a(II)I

    move-result v7

    :goto_2
    if-nez v6, :cond_3

    .line 126
    new-instance v6, Landroidx/work/impl/model/SystemIdInfo;

    iget-object v8, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V

    .line 127
    iget-object v8, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 3317
    iget-object v8, v8, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 128
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/SystemIdInfoDao;

    move-result-object v8

    .line 129
    invoke-interface {v8, v6}, Landroidx/work/impl/model/SystemIdInfoDao;->insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V

    .line 132
    :cond_3
    invoke-direct {p0, v5, v7}, Landroidx/work/impl/background/systemjob/b;->a(Landroidx/work/impl/model/WorkSpec;I)V

    .line 139
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v6, v8, :cond_6

    .line 142
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/b;->b:Landroid/content/Context;

    iget-object v8, p0, Landroidx/work/impl/background/systemjob/b;->c:Landroid/app/job/JobScheduler;

    iget-object v9, v5, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Landroidx/work/impl/background/systemjob/b;->a(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 151
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 157
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    .line 160
    :cond_5
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 3327
    iget-object v6, v6, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 161
    invoke-virtual {v6}, Landroidx/work/Configuration;->getMinJobSchedulerId()I

    move-result v6

    iget-object v7, p0, Landroidx/work/impl/background/systemjob/b;->d:Landroidx/work/impl/j;

    .line 4327
    iget-object v7, v7, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 162
    invoke-virtual {v7}, Landroidx/work/Configuration;->getMaxJobSchedulerId()I

    move-result v7

    .line 160
    invoke-virtual {v1, v6, v7}, Landroidx/work/impl/utils/c;->a(II)I

    move-result v6

    .line 164
    :goto_3
    invoke-direct {p0, v5, v6}, Landroidx/work/impl/background/systemjob/b;->a(Landroidx/work/impl/model/WorkSpec;I)V

    .line 167
    :cond_6
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 169
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 170
    throw p1

    :cond_7
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
