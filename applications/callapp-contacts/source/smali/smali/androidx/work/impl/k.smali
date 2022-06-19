.class public final Landroidx/work/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/k$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Landroid/content/Context;

.field c:Landroidx/work/impl/model/WorkSpec;

.field d:Landroidx/work/ListenableWorker;

.field e:Landroidx/work/ListenableWorker$a;

.field f:Landroidx/work/impl/utils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/a/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/work/WorkerParameters$a;

.field private k:Landroidx/work/Configuration;

.field private l:Landroidx/work/impl/utils/b/a;

.field private m:Landroidx/work/impl/foreground/a;

.field private n:Landroidx/work/impl/WorkDatabase;

.field private o:Landroidx/work/impl/model/WorkSpecDao;

.field private p:Landroidx/work/impl/model/DependencyDao;

.field private q:Landroidx/work/impl/model/WorkTagDao;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private volatile t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 75
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/k;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/k$a;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 88
    iput-object v0, p0, Landroidx/work/impl/k;->e:Landroidx/work/ListenableWorker$a;

    .line 103
    invoke-static {}, Landroidx/work/impl/utils/a/c;->a()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/k;->f:Landroidx/work/impl/utils/a/c;

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Landroidx/work/impl/k;->g:Lcom/google/common/util/concurrent/a;

    .line 112
    iget-object v0, p1, Landroidx/work/impl/k$a;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/work/impl/k;->b:Landroid/content/Context;

    .line 113
    iget-object v0, p1, Landroidx/work/impl/k$a;->d:Landroidx/work/impl/utils/b/a;

    iput-object v0, p0, Landroidx/work/impl/k;->l:Landroidx/work/impl/utils/b/a;

    .line 114
    iget-object v0, p1, Landroidx/work/impl/k$a;->c:Landroidx/work/impl/foreground/a;

    iput-object v0, p0, Landroidx/work/impl/k;->m:Landroidx/work/impl/foreground/a;

    .line 115
    iget-object v0, p1, Landroidx/work/impl/k$a;->g:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Landroidx/work/impl/k$a;->h:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/impl/k;->i:Ljava/util/List;

    .line 117
    iget-object v0, p1, Landroidx/work/impl/k$a;->i:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, Landroidx/work/impl/k;->j:Landroidx/work/WorkerParameters$a;

    .line 118
    iget-object v0, p1, Landroidx/work/impl/k$a;->b:Landroidx/work/ListenableWorker;

    iput-object v0, p0, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    .line 120
    iget-object v0, p1, Landroidx/work/impl/k$a;->e:Landroidx/work/Configuration;

    iput-object v0, p0, Landroidx/work/impl/k;->k:Landroidx/work/Configuration;

    .line 121
    iget-object p1, p1, Landroidx/work/impl/k$a;->f:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    .line 122
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    .line 123
    iget-object p1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->k()Landroidx/work/impl/model/DependencyDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/model/DependencyDao;

    .line 124
    iget-object p1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->l()Landroidx/work/impl/model/WorkTagDao;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/k;->q:Landroidx/work/impl/model/WorkTagDao;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 522
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 523
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 525
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 527
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v1

    sget-object v2, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    if-eq v1, v2, :cond_0

    .line 528
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 530
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {v1, p1}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 429
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 437
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->getAllUnfinishedWork()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 438
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Landroidx/work/impl/k;->b:Landroid/content/Context;

    const-class v3, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v3, v2}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 446
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v3, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 449
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Landroidx/work/impl/k;->m:Landroidx/work/impl/foreground/a;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/a;->d(Ljava/lang/String;)V

    .line 452
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 456
    iget-object v0, p0, Landroidx/work/impl/k;->f:Landroidx/work/impl/utils/a/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 454
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 455
    throw p1
.end method

.method private c()V
    .locals 5

    .line 395
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v0

    .line 396
    sget-object v1, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 397
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    invoke-direct {p0, v2}, Landroidx/work/impl/k;->a(Z)V

    return-void

    .line 401
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 402
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    invoke-direct {p0, v3}, Landroidx/work/impl/k;->a(Z)V

    return-void
.end method

.method private d()Z
    .locals 4

    .line 413
    iget-boolean v0, p0, Landroidx/work/impl/k;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 414
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/k;->s:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v3, "Work interrupted for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v2}, Landroidx/work/t$a;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroidx/work/impl/k;->a(Z)V

    return v0

    :cond_2
    return v1
.end method

.method private e()Z
    .locals 6

    .line 489
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 491
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v0

    .line 492
    sget-object v1, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 497
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 500
    throw v0
.end method

.method private f()V
    .locals 4

    .line 506
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    const/4 v0, 0x0

    .line 508
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroidx/work/impl/k;->a(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Landroidx/work/impl/k;->e:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4485
    iget-object v1, v1, Landroidx/work/ListenableWorker$a$a;->a:Landroidx/work/d;

    .line 512
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/d;)V

    .line 513
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 516
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 515
    iget-object v2, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 516
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Z)V

    .line 517
    throw v1
.end method

.method private g()V
    .locals 6

    .line 535
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    const/4 v0, 0x1

    .line 537
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 539
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 540
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 543
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 542
    iget-object v2, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 543
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Z)V

    .line 544
    throw v1
.end method

.method private h()V
    .locals 5

    .line 548
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    const/4 v0, 0x0

    .line 554
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 555
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 557
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 558
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 561
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 560
    iget-object v2, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 561
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Z)V

    .line 562
    throw v1
.end method


# virtual methods
.method final a()V
    .locals 9

    .line 331
    invoke-direct {p0}, Landroidx/work/impl/k;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 332
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 334
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v0

    .line 335
    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0, v1}, Landroidx/work/impl/k;->a(Z)V

    goto/16 :goto_1

    .line 342
    :cond_0
    sget-object v2, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    if-ne v0, v2, :cond_7

    .line 343
    iget-object v0, p0, Landroidx/work/impl/k;->e:Landroidx/work/ListenableWorker$a;

    .line 3460
    instance-of v2, v0, Landroidx/work/ListenableWorker$a$c;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 3461
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Worker result SUCCESS for %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/k;->s:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 3463
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3464
    iget-object v0, p0, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3465
    invoke-direct {p0}, Landroidx/work/impl/k;->h()V

    goto/16 :goto_1

    .line 3566
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3568
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/t$a;->SUCCEEDED:Landroidx/work/t$a;

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-interface {v0, v2, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 3569
    iget-object v0, p0, Landroidx/work/impl/k;->e:Landroidx/work/ListenableWorker$a;

    check-cast v0, Landroidx/work/ListenableWorker$a$c;

    .line 4430
    iget-object v0, v0, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/d;

    .line 3572
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v4, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/d;)V

    .line 3575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3576
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/model/DependencyDao;

    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3577
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3578
    iget-object v6, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v6, v2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/t$a;

    move-result-object v6

    sget-object v7, Landroidx/work/t$a;->BLOCKED:Landroidx/work/t$a;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/model/DependencyDao;

    .line 3579
    invoke-interface {v6, v2}, Landroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3580
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v6, "Setting status to enqueued for %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v1

    .line 3581
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3582
    iget-object v6, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v7, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v2, v8, v1

    invoke-interface {v6, v7, v8}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/t$a;[Ljava/lang/String;)I

    .line 3583
    iget-object v6, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v6, v2, v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    goto :goto_0

    .line 3587
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3589
    :try_start_2
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 3590
    invoke-direct {p0, v1}, Landroidx/work/impl/k;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 3589
    iget-object v2, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 3590
    invoke-direct {p0, v1}, Landroidx/work/impl/k;->a(Z)V

    .line 3591
    throw v0

    .line 3470
    :cond_4
    instance-of v0, v0, Landroidx/work/ListenableWorker$a$b;

    if-eqz v0, :cond_5

    .line 3471
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Worker result RETRY for %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/k;->s:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 3473
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3474
    invoke-direct {p0}, Landroidx/work/impl/k;->g()V

    goto :goto_1

    .line 3476
    :cond_5
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Worker result FAILURE for %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/k;->s:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 3478
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3479
    iget-object v0, p0, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3480
    invoke-direct {p0}, Landroidx/work/impl/k;->h()V

    goto :goto_1

    .line 3482
    :cond_6
    invoke-direct {p0}, Landroidx/work/impl/k;->f()V

    goto :goto_1

    .line 344
    :cond_7
    invoke-virtual {v0}, Landroidx/work/t$a;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 345
    invoke-direct {p0}, Landroidx/work/impl/k;->g()V

    .line 347
    :cond_8
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    goto :goto_2

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 350
    throw v0

    .line 360
    :cond_9
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/k;->i:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/e;

    .line 362
    iget-object v2, p0, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/e;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 364
    :cond_a
    iget-object v0, p0, Landroidx/work/impl/k;->k:Landroidx/work/Configuration;

    iget-object v1, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Landroidx/work/impl/k;->i:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/f;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Landroidx/work/impl/k;->t:Z

    .line 377
    invoke-direct {p0}, Landroidx/work/impl/k;->d()Z

    .line 379
    iget-object v1, p0, Landroidx/work/impl/k;->g:Lcom/google/common/util/concurrent/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 381
    invoke-interface {v1}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    .line 382
    iget-object v3, p0, Landroidx/work/impl/k;->g:Lcom/google/common/util/concurrent/a;

    invoke-interface {v3, v0}, Lcom/google/common/util/concurrent/a;->cancel(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 385
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 386
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->stop()V

    return-void

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    aput-object v1, v0, v2

    const-string v1, "WorkSpec %s is already done. Not interrupting."

    .line 389
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 390
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    return-void
.end method

.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    .line 134
    iget-object v0, v1, Landroidx/work/impl/k;->q:Landroidx/work/impl/model/WorkTagDao;

    iget-object v2, v1, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkTagDao;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/impl/k;->r:Ljava/util/List;

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Work [ id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/work/impl/k;->h:Ljava/lang/String;

    .line 1596
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tags={ "

    .line 1597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const-string v6, ", "

    .line 1604
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 1608
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    iput-object v0, v1, Landroidx/work/impl/k;->s:Ljava/lang/String;

    .line 2140
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2144
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 2146
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, v1, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    if-nez v0, :cond_2

    .line 2148
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/k;->a:Ljava/lang/String;

    const-string v4, "Didn\'t find WorkSpec for id %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v1, Landroidx/work/impl/k;->h:Ljava/lang/String;

    aput-object v5, v3, v6

    .line 2150
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    .line 2148
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2151
    invoke-direct {v1, v6}, Landroidx/work/impl/k;->a(Z)V

    .line 2152
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return-void

    .line 2158
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    sget-object v2, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    if-eq v0, v2, :cond_3

    .line 2159
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->c()V

    .line 2160
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 2161
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 2162
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2204
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return-void

    .line 2178
    :cond_3
    :try_start_2
    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2179
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2184
    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-wide v7, v0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    .line 2185
    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-gez v0, :cond_6

    .line 2186
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const-string v0, "Delaying execution for %s because it is being executed before schedule."

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 2187
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2194
    invoke-direct {v1, v3}, Landroidx/work/impl/k;->a(Z)V

    .line 2195
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2204
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return-void

    .line 2202
    :cond_6
    :try_start_3
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2204
    iget-object v0, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 2210
    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2211
    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    :goto_3
    move-object v9, v0

    goto :goto_4

    .line 2213
    :cond_7
    iget-object v0, v1, Landroidx/work/impl/k;->k:Landroidx/work/Configuration;

    invoke-virtual {v0}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/j;

    .line 2214
    iget-object v0, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 3061
    invoke-static {v0}, Landroidx/work/i;->a(Ljava/lang/String;)Landroidx/work/i;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2218
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/k;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "Could not create Input Merger %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2220
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->f()V

    return-void

    .line 2223
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    iget-object v4, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-object v4, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v5, v1, Landroidx/work/impl/k;->h:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2226
    invoke-virtual {v0, v2}, Landroidx/work/i;->a(Ljava/util/List;)Landroidx/work/d;

    move-result-object v0

    goto :goto_3

    .line 2229
    :goto_4
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v2, v1, Landroidx/work/impl/k;->h:Ljava/lang/String;

    .line 2230
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    iget-object v10, v1, Landroidx/work/impl/k;->r:Ljava/util/List;

    iget-object v11, v1, Landroidx/work/impl/k;->j:Landroidx/work/WorkerParameters$a;

    iget-object v2, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget v12, v2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget-object v2, v1, Landroidx/work/impl/k;->k:Landroidx/work/Configuration;

    .line 2235
    invoke-virtual {v2}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    iget-object v14, v1, Landroidx/work/impl/k;->l:Landroidx/work/impl/utils/b/a;

    iget-object v2, v1, Landroidx/work/impl/k;->k:Landroidx/work/Configuration;

    .line 2237
    invoke-virtual {v2}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/w;

    move-result-object v15

    new-instance v2, Landroidx/work/impl/utils/m;

    iget-object v4, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v1, Landroidx/work/impl/k;->l:Landroidx/work/impl/utils/b/a;

    invoke-direct {v2, v4, v5}, Landroidx/work/impl/utils/m;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/b/a;)V

    new-instance v4, Landroidx/work/impl/utils/l;

    iget-object v5, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v7, v1, Landroidx/work/impl/k;->m:Landroidx/work/impl/foreground/a;

    iget-object v6, v1, Landroidx/work/impl/k;->l:Landroidx/work/impl/utils/b/a;

    invoke-direct {v4, v5, v7, v6}, Landroidx/work/impl/utils/l;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Landroidx/work/impl/utils/b/a;)V

    move-object v7, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-direct/range {v7 .. v17}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/d;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Landroidx/work/impl/utils/b/a;Landroidx/work/w;Landroidx/work/p;Landroidx/work/g;)V

    .line 2243
    iget-object v2, v1, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_9

    .line 2244
    iget-object v2, v1, Landroidx/work/impl/k;->k:Landroidx/work/Configuration;

    invoke-virtual {v2}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/w;

    move-result-object v2

    iget-object v4, v1, Landroidx/work/impl/k;->b:Landroid/content/Context;

    iget-object v5, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v0}, Landroidx/work/w;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    .line 2250
    :cond_9
    iget-object v0, v1, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_a

    .line 2251
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/k;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Could not create Worker %s"

    .line 2252
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 2251
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2253
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->f()V

    return-void

    :cond_a
    const/4 v5, 0x0

    .line 2257
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2258
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/k;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroidx/work/impl/k;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 2259
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 2258
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2262
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->f()V

    return-void

    .line 2265
    :cond_b
    iget-object v0, v1, Landroidx/work/impl/k;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 2269
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2270
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->d()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2274
    invoke-static {}, Landroidx/work/impl/utils/a/c;->a()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    .line 2276
    iget-object v2, v1, Landroidx/work/impl/k;->l:Landroidx/work/impl/utils/b/a;

    invoke-interface {v2}, Landroidx/work/impl/utils/b/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/k$1;

    invoke-direct {v3, v1, v0}, Landroidx/work/impl/k$1;-><init>(Landroidx/work/impl/k;Landroidx/work/impl/utils/a/c;)V

    .line 2277
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2293
    iget-object v2, v1, Landroidx/work/impl/k;->s:Ljava/lang/String;

    .line 2294
    new-instance v3, Landroidx/work/impl/k$2;

    invoke-direct {v3, v1, v0, v2}, Landroidx/work/impl/k$2;-><init>(Landroidx/work/impl/k;Landroidx/work/impl/utils/a/c;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/work/impl/k;->l:Landroidx/work/impl/utils/b/a;

    .line 2323
    invoke-interface {v2}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/g;

    move-result-object v2

    .line 2294
    invoke-virtual {v0, v3, v2}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 2325
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->c()V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 2204
    iget-object v2, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 2205
    throw v0

    :cond_d
    :goto_5
    return-void
.end method
