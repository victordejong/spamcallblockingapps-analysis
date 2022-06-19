.class public Landroidx/work/impl/j;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/j$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Landroid/content/Context;

.field c:Landroidx/work/impl/b/p;

.field d:Landroidx/work/ListenableWorker;

.field e:Landroidx/work/ListenableWorker$a;

.field f:Landroidx/work/impl/utils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/a/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/google/a/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/a/a",
            "<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/work/WorkerParameters$a;

.field private k:Landroidx/work/b;

.field private l:Landroidx/work/impl/utils/b/a;

.field private m:Landroidx/work/impl/foreground/a;

.field private n:Landroidx/work/impl/WorkDatabase;

.field private o:Landroidx/work/impl/b/q;

.field private p:Landroidx/work/impl/b/b;

.field private q:Landroidx/work/impl/b/t;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 75
    const-string/jumbo v0, "WorkerWrapper"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/j;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/j$a;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->e:Landroidx/work/ListenableWorker$a;

    .line 103
    invoke-static {}, Landroidx/work/impl/utils/a/c;->d()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/utils/a/c;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/j;->g:Lcom/google/a/a/a/a;

    .line 112
    iget-object v0, p1, Landroidx/work/impl/j$a;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/work/impl/j;->b:Landroid/content/Context;

    .line 113
    iget-object v0, p1, Landroidx/work/impl/j$a;->d:Landroidx/work/impl/utils/b/a;

    iput-object v0, p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/utils/b/a;

    .line 114
    iget-object v0, p1, Landroidx/work/impl/j$a;->c:Landroidx/work/impl/foreground/a;

    iput-object v0, p0, Landroidx/work/impl/j;->m:Landroidx/work/impl/foreground/a;

    .line 115
    iget-object v0, p1, Landroidx/work/impl/j$a;->g:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Landroidx/work/impl/j$a;->h:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/impl/j;->i:Ljava/util/List;

    .line 117
    iget-object v0, p1, Landroidx/work/impl/j$a;->i:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, Landroidx/work/impl/j;->j:Landroidx/work/WorkerParameters$a;

    .line 118
    iget-object v0, p1, Landroidx/work/impl/j$a;->b:Landroidx/work/ListenableWorker;

    iput-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    .line 120
    iget-object v0, p1, Landroidx/work/impl/j$a;->e:Landroidx/work/b;

    iput-object v0, p0, Landroidx/work/impl/j;->k:Landroidx/work/b;

    .line 121
    iget-object v0, p1, Landroidx/work/impl/j$a;->f:Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    .line 122
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    .line 123
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/b/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->p:Landroidx/work/impl/b/b;

    .line 124
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Landroidx/work/impl/b/t;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->q:Landroidx/work/impl/b/t;

    .line 125
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags={ "

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 595
    const/4 v0, 0x1

    .line 596
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    if-eqz v1, :cond_0

    .line 598
    const/4 v1, 0x0

    .line 602
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 600
    :cond_0
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 604
    :cond_1
    const-string/jumbo v0, " } ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroidx/work/ListenableWorker$a;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 456
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Worker result SUCCESS for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->s:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 459
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 457
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 460
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Landroidx/work/impl/j;->j()V

    .line 481
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Landroidx/work/impl/j;->k()V

    goto :goto_0

    .line 466
    :cond_1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz v0, :cond_2

    .line 467
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Worker result RETRY for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->s:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 469
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 467
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 470
    invoke-direct {p0}, Landroidx/work/impl/j;->i()V

    goto :goto_0

    .line 472
    :cond_2
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Worker result FAILURE for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->s:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 474
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 472
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 475
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    invoke-direct {p0}, Landroidx/work/impl/j;->j()V

    goto :goto_0

    .line 478
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/j;->d()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 518
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 519
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    iget-object v2, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    invoke-interface {v2, v0}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v2

    sget-object v3, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    if-eq v2, v3, :cond_0

    .line 524
    iget-object v2, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    sget-object v3, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v2, p0, Landroidx/work/impl/j;->p:Landroidx/work/impl/b/b;

    invoke-interface {v2, v0}, Landroidx/work/impl/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 528
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 427
    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 435
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/b/q;->a()Ljava/util/List;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 437
    :cond_1
    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Landroidx/work/impl/j;->b:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 441
    :cond_2
    if-eqz p1, :cond_3

    .line 443
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;J)I

    .line 445
    :cond_3
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Landroidx/work/impl/j;->m:Landroidx/work/impl/foreground/a;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/a;->e(Ljava/lang/String;)V

    .line 448
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 452
    iget-object v0, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/utils/a/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    .line 453
    return-void

    .line 450
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 451
    throw v0
.end method

.method private e()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 140
    invoke-direct {p0}, Landroidx/work/impl/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 146
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;)Landroidx/work/impl/b/p;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    .line 147
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    if-nez v0, :cond_2

    .line 148
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Didn\'t find WorkSpec for id %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 150
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    goto :goto_0

    .line 157
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v0, v0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    sget-object v1, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-eq v0, v1, :cond_3

    .line 158
    invoke-direct {p0}, Landroidx/work/impl/j;->f()V

    .line 159
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V

    .line 160
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "%s is not in ENQUEUED state. Nothing more to do."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v5, v5, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 161
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    goto :goto_0

    .line 177
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-wide v0, v0, Landroidx/work/impl/b/p;->n:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    move v0, v11

    .line 184
    :goto_1
    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->c()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    .line 185
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Delaying execution for %s because it is being executed before schedule."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v5, v5, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 186
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 185
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    goto/16 :goto_0

    :cond_5
    move v0, v12

    .line 183
    goto :goto_1

    .line 200
    :cond_6
    :try_start_3
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 208
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    invoke-virtual {v0}, Landroidx/work/impl/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v2, v0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 227
    :goto_2
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    .line 228
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iget-object v3, p0, Landroidx/work/impl/j;->r:Ljava/util/List;

    iget-object v4, p0, Landroidx/work/impl/j;->j:Landroidx/work/WorkerParameters$a;

    iget-object v5, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget v5, v5, Landroidx/work/impl/b/p;->k:I

    iget-object v6, p0, Landroidx/work/impl/j;->k:Landroidx/work/b;

    .line 233
    invoke-virtual {v6}, Landroidx/work/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v7, p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/utils/b/a;

    iget-object v8, p0, Landroidx/work/impl/j;->k:Landroidx/work/b;

    .line 235
    invoke-virtual {v8}, Landroidx/work/b;->c()Landroidx/work/v;

    move-result-object v8

    new-instance v9, Landroidx/work/impl/utils/k;

    iget-object v10, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v13, p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/utils/b/a;

    invoke-direct {v9, v10, v13}, Landroidx/work/impl/utils/k;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/b/a;)V

    new-instance v10, Landroidx/work/impl/utils/j;

    iget-object v13, p0, Landroidx/work/impl/j;->m:Landroidx/work/impl/foreground/a;

    iget-object v14, p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/utils/b/a;

    invoke-direct {v10, v13, v14}, Landroidx/work/impl/utils/j;-><init>(Landroidx/work/impl/foreground/a;Landroidx/work/impl/utils/b/a;)V

    invoke-direct/range {v0 .. v10}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/e;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Landroidx/work/impl/utils/b/a;Landroidx/work/v;Landroidx/work/p;Landroidx/work/i;)V

    .line 241
    iget-object v1, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_7

    .line 242
    iget-object v1, p0, Landroidx/work/impl/j;->k:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->c()Landroidx/work/v;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/j;->b:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v3, v3, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/v;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    .line 248
    :cond_7
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    if-nez v0, :cond_a

    .line 249
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Could not create Worker %s"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v4, v4, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v4, v3, v12

    .line 250
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Throwable;

    .line 249
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 251
    invoke-virtual {p0}, Landroidx/work/impl/j;->d()V

    goto/16 :goto_0

    .line 202
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 203
    throw v0

    .line 211
    :cond_8
    iget-object v0, p0, Landroidx/work/impl/j;->k:Landroidx/work/b;

    invoke-virtual {v0}, Landroidx/work/b;->d()Landroidx/work/k;

    move-result-object v0

    .line 212
    iget-object v1, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v1, v1, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1}, Landroidx/work/k;->b(Ljava/lang/String;)Landroidx/work/j;

    move-result-object v0

    .line 215
    if-nez v0, :cond_9

    .line 216
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Could not create Input Merger %s"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v4, v4, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 218
    invoke-virtual {p0}, Landroidx/work/impl/j;->d()V

    goto/16 :goto_0

    .line 221
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v2, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v2, v2, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v3, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroidx/work/impl/b/q;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v0, v1}, Landroidx/work/j;->a(Ljava/util/List;)Landroidx/work/e;

    move-result-object v2

    goto/16 :goto_2

    .line 255
    :cond_a
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 256
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Received an already-used Worker %s; WorkerFactory should return new instances"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v4, v4, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v4, v3, v12

    .line 257
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Throwable;

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p0}, Landroidx/work/impl/j;->d()V

    goto/16 :goto_0

    .line 263
    :cond_b
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->h()V

    .line 267
    invoke-direct {p0}, Landroidx/work/impl/j;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 268
    invoke-direct {p0}, Landroidx/work/impl/j;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Landroidx/work/impl/utils/a/c;->d()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    .line 274
    iget-object v1, p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/utils/b/a;

    invoke-interface {v1}, Landroidx/work/impl/utils/b/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/j$1;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/j$1;-><init>(Landroidx/work/impl/j;Landroidx/work/impl/utils/a/c;)V

    .line 275
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 291
    iget-object v1, p0, Landroidx/work/impl/j;->s:Ljava/lang/String;

    .line 292
    new-instance v2, Landroidx/work/impl/j$2;

    invoke-direct {v2, p0, v0, v1}, Landroidx/work/impl/j$2;-><init>(Landroidx/work/impl/j;Landroidx/work/impl/utils/a/c;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/utils/b/a;

    .line 321
    invoke-interface {v1}, Landroidx/work/impl/utils/b/a;->b()Landroidx/work/impl/utils/f;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_0

    .line 323
    :cond_c
    invoke-direct {p0}, Landroidx/work/impl/j;->f()V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 393
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v0

    .line 394
    sget-object v1, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    if-ne v0, v1, :cond_0

    .line 395
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 397
    invoke-direct {p0, v7}, Landroidx/work/impl/j;->a(Z)V

    .line 403
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v3, "Status for %s is %s; not doing any work"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 400
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Throwable;

    .line 399
    invoke-virtual {v1, v2, v0, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 401
    invoke-direct {p0, v6}, Landroidx/work/impl/j;->a(Z)V

    goto :goto_0
.end method

.method private g()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 411
    iget-boolean v2, p0, Landroidx/work/impl/j;->t:Z

    if-eqz v2, :cond_2

    .line 412
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v4, "Work interrupted for %s"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/j;->s:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 413
    iget-object v2, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v3, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v2

    .line 414
    if-nez v2, :cond_0

    .line 417
    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Z)V

    .line 423
    :goto_0
    return v1

    .line 419
    :cond_0
    invoke-virtual {v2}, Landroidx/work/s$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Z)V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 423
    goto :goto_0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    .line 485
    iget-object v2, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 487
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v3, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v2

    .line 488
    sget-object v3, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-ne v2, v3, :cond_0

    .line 489
    iget-object v1, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    sget-object v2, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v2, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/b/q;->d(Ljava/lang/String;)I

    .line 493
    :goto_0
    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 497
    return v0

    .line 495
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 496
    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 531
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 533
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    sget-object v1, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/b/q;->a(Ljava/lang/String;J)V

    .line 535
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;J)I

    .line 536
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 539
    invoke-direct {p0, v5}, Landroidx/work/impl/j;->a(Z)V

    .line 541
    return-void

    .line 538
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 539
    invoke-direct {p0, v5}, Landroidx/work/impl/j;->a(Z)V

    .line 540
    throw v0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 544
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 550
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/b/q;->a(Ljava/lang/String;J)V

    .line 551
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    sget-object v1, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/b/q;->e(Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;J)I

    .line 554
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 557
    invoke-direct {p0, v5}, Landroidx/work/impl/j;->a(Z)V

    .line 559
    return-void

    .line 556
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 557
    invoke-direct {p0, v5}, Landroidx/work/impl/j;->a(Z)V

    .line 558
    throw v0
.end method

.method private k()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 562
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 564
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    sget-object v1, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Landroidx/work/impl/j;->e:Landroidx/work/ListenableWorker$a;

    check-cast v0, Landroidx/work/ListenableWorker$a$c;

    .line 567
    invoke-virtual {v0}, Landroidx/work/ListenableWorker$a$c;->d()Landroidx/work/e;

    move-result-object v0

    .line 568
    iget-object v1, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v2, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroidx/work/impl/b/q;->a(Ljava/lang/String;Landroidx/work/e;)V

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 572
    iget-object v0, p0, Landroidx/work/impl/j;->p:Landroidx/work/impl/b/b;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    iget-object v4, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    invoke-interface {v4, v0}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v4

    sget-object v5, Landroidx/work/s$a;->e:Landroidx/work/s$a;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/work/impl/j;->p:Landroidx/work/impl/b/b;

    .line 575
    invoke-interface {v4, v0}, Landroidx/work/impl/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v6, "Setting status to enqueued for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 577
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Throwable;

    .line 576
    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 578
    iget-object v4, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    sget-object v5, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Landroidx/work/impl/b/q;->a(Landroidx/work/s$a;[Ljava/lang/String;)I

    .line 579
    iget-object v4, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    invoke-interface {v4, v0, v2, v3}, Landroidx/work/impl/b/q;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 586
    invoke-direct {p0, v9}, Landroidx/work/impl/j;->a(Z)V

    .line 587
    throw v0

    .line 583
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 586
    invoke-direct {p0, v9}, Landroidx/work/impl/j;->a(Z)V

    .line 588
    return-void
.end method


# virtual methods
.method public a()Lcom/google/a/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/a/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/utils/a/c;

    return-object v0
.end method

.method b()V
    .locals 3

    .prologue
    .line 329
    invoke-direct {p0}, Landroidx/work/impl/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 332
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/b/q;->f(Ljava/lang/String;)Landroidx/work/s$a;

    move-result-object v0

    .line 333
    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Landroidx/work/impl/b/n;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/b/n;->a(Ljava/lang/String;)V

    .line 334
    if-nez v0, :cond_2

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Z)V

    .line 345
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 358
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/j;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Landroidx/work/impl/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/d;

    .line 360
    iget-object v2, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_2
    :try_start_1
    sget-object v1, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    if-ne v0, v1, :cond_3

    .line 341
    iget-object v0, p0, Landroidx/work/impl/j;->e:Landroidx/work/ListenableWorker$a;

    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Landroidx/work/ListenableWorker$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 348
    throw v0

    .line 342
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroidx/work/s$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Landroidx/work/impl/j;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 362
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/j;->k:Landroidx/work/b;

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Landroidx/work/impl/j;->i:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/e;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 364
    :cond_5
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 371
    iput-boolean v3, p0, Landroidx/work/impl/j;->t:Z

    .line 375
    invoke-direct {p0}, Landroidx/work/impl/j;->g()Z

    .line 377
    iget-object v0, p0, Landroidx/work/impl/j;->g:Lcom/google/a/a/a/a;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Landroidx/work/impl/j;->g:Lcom/google/a/a/a/a;

    invoke-interface {v0}, Lcom/google/a/a/a/a;->isDone()Z

    move-result v0

    .line 380
    iget-object v2, p0, Landroidx/work/impl/j;->g:Lcom/google/a/a/a/a;

    invoke-interface {v2, v3}, Lcom/google/a/a/a/a;->cancel(Z)Z

    .line 383
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->e()V

    .line 390
    :goto_1
    return-void

    .line 386
    :cond_0
    const-string/jumbo v0, "WorkSpec %s is already done. Not interrupting."

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    aput-object v3, v2, v1

    .line 387
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/j;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 504
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Landroidx/work/impl/j;->e:Landroidx/work/ListenableWorker$a;

    check-cast v0, Landroidx/work/ListenableWorker$a$a;

    .line 507
    invoke-virtual {v0}, Landroidx/work/ListenableWorker$a$a;->d()Landroidx/work/e;

    move-result-object v0

    .line 508
    iget-object v1, p0, Landroidx/work/impl/j;->o:Landroidx/work/impl/b/q;

    iget-object v2, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroidx/work/impl/b/q;->a(Ljava/lang/String;Landroidx/work/e;)V

    .line 509
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v0, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 512
    invoke-direct {p0, v3}, Landroidx/work/impl/j;->a(Z)V

    .line 514
    return-void

    .line 511
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 512
    invoke-direct {p0, v3}, Landroidx/work/impl/j;->a(Z)V

    .line 513
    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroidx/work/impl/j;->q:Landroidx/work/impl/b/t;

    iget-object v1, p0, Landroidx/work/impl/j;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/b/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->r:Ljava/util/List;

    .line 135
    iget-object v0, p0, Landroidx/work/impl/j;->r:Ljava/util/List;

    invoke-direct {p0, v0}, Landroidx/work/impl/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/j;->s:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Landroidx/work/impl/j;->e()V

    .line 137
    return-void
.end method
