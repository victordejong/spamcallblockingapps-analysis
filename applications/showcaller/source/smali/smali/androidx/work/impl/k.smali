.class public Landroidx/work/impl/k;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/k$c;
    }
.end annotation


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/work/WorkerParameters$a;

.field i:Landroidx/work/impl/n/p;

.field j:Landroidx/work/ListenableWorker;

.field k:Landroidx/work/impl/utils/o/a;

.field l:Landroidx/work/ListenableWorker$a;

.field private m:Landroidx/work/a;

.field private n:Landroidx/work/impl/foreground/a;

.field private o:Landroidx/work/impl/WorkDatabase;

.field private p:Landroidx/work/impl/n/q;

.field private q:Landroidx/work/impl/n/b;

.field private r:Landroidx/work/impl/n/t;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field u:Landroidx/work/impl/utils/futures/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Landroidx/work/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/k;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/k$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/k;->l:Landroidx/work/ListenableWorker$a;

    .line 3
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/k;->u:Landroidx/work/impl/utils/futures/a;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/work/impl/k;->v:Lcom/google/common/util/concurrent/a;

    .line 5
    iget-object v0, p1, Landroidx/work/impl/k$c;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/work/impl/k;->e:Landroid/content/Context;

    .line 6
    iget-object v0, p1, Landroidx/work/impl/k$c;->d:Landroidx/work/impl/utils/o/a;

    iput-object v0, p0, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    .line 7
    iget-object v0, p1, Landroidx/work/impl/k$c;->c:Landroidx/work/impl/foreground/a;

    iput-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/foreground/a;

    .line 8
    iget-object v0, p1, Landroidx/work/impl/k$c;->g:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Landroidx/work/impl/k$c;->h:Ljava/util/List;

    iput-object v0, p0, Landroidx/work/impl/k;->g:Ljava/util/List;

    .line 10
    iget-object v0, p1, Landroidx/work/impl/k$c;->i:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, Landroidx/work/impl/k;->h:Landroidx/work/WorkerParameters$a;

    .line 11
    iget-object v0, p1, Landroidx/work/impl/k$c;->b:Landroidx/work/ListenableWorker;

    iput-object v0, p0, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    .line 12
    iget-object v0, p1, Landroidx/work/impl/k$c;->e:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/k;->m:Landroidx/work/a;

    .line 13
    iget-object p1, p1, Landroidx/work/impl/k$c;->f:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    .line 14
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->B()Landroidx/work/impl/n/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    .line 15
    iget-object p1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->t()Landroidx/work/impl/n/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/k;->q:Landroidx/work/impl/n/b;

    .line 16
    iget-object p1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->C()Landroidx/work/impl/n/t;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/k;->r:Landroidx/work/impl/n/t;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " } ]"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroidx/work/ListenableWorker$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/k;->t:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    invoke-virtual {p1}, Landroidx/work/impl/n/p;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Landroidx/work/impl/k;->h()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Landroidx/work/impl/k;->m()V

    goto :goto_0

    .line 8
    :cond_1
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/k;->t:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 10
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12
    invoke-direct {p0}, Landroidx/work/impl/k;->g()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/work/impl/k;->t:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 14
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    invoke-virtual {p1}, Landroidx/work/impl/n/p;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-direct {p0}, Landroidx/work/impl/k;->h()V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/k;->l()V

    :goto_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    invoke-interface {v1, p1}, Landroidx/work/impl/n/q;->m(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    sget-object v2, Landroidx/work/WorkInfo$State;->i:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v2, Landroidx/work/WorkInfo$State;->g:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/k;->q:Landroidx/work/impl/n/b;

    invoke-interface {v1, p1}, Landroidx/work/impl/n/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v2, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/n/q;->s(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/n/q;->c(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 7
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 9
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    .line 10
    throw v1
.end method

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/n/q;->s(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v2, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/n/q;->o(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/n/q;->c(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 8
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 10
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    .line 11
    throw v1
.end method

.method private i(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Landroidx/work/impl/n/q;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/n/q;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/work/impl/k;->e:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v2, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/n/q;->c(Ljava/lang/String;J)I

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/work/impl/k;->n:Landroidx/work/impl/foreground/a;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/a;->b(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 10
    iget-object v0, p0, Landroidx/work/impl/k;->u:Landroidx/work/impl/utils/futures/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/a;->q(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 12
    throw p1
.end method

.method private j()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/n/q;->m(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-direct {p0, v2}, Landroidx/work/impl/k;->i(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/k;->d:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-direct {p0, v3}, Landroidx/work/impl/k;->i(Z)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, v1, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/n/q;->n(Ljava/lang/String;)Landroidx/work/impl/n/p;

    move-result-object v0

    iput-object v0, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/k;->d:Ljava/lang/String;

    const-string v5, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v6, v2, v3

    .line 5
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 6
    invoke-virtual {v0, v4, v2, v5}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-direct {v1, v3}, Landroidx/work/impl/k;->i(Z)V

    .line 8
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-void

    .line 10
    :cond_1
    :try_start_1
    iget-object v4, v0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    sget-object v5, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_2

    .line 11
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->j()V

    .line 12
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V

    .line 13
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/k;->d:Ljava/lang/String;

    const-string v5, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v6, v6, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    aput-object v6, v2, v3

    .line 14
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 15
    invoke-virtual {v0, v4, v2, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-void

    .line 17
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/n/p;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    invoke-virtual {v0}, Landroidx/work/impl/n/p;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 19
    iget-object v0, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-wide v6, v0, Landroidx/work/impl/n/p;->p:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_5

    .line 20
    invoke-virtual {v0}, Landroidx/work/impl/n/p;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 21
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/k;->d:Ljava/lang/String;

    const-string v5, "Delaying execution for %s because it is being executed before schedule."

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v7, v7, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 22
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v4, v5, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 24
    invoke-direct {v1, v2}, Landroidx/work/impl/k;->i(Z)V

    .line 25
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return-void

    .line 27
    :cond_5
    :try_start_3
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    iget-object v0, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    .line 29
    iget-object v0, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    invoke-virtual {v0}, Landroidx/work/impl/n/p;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v0, v0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    :goto_1
    move-object v6, v0

    goto :goto_2

    .line 31
    :cond_6
    iget-object v0, v1, Landroidx/work/impl/k;->m:Landroidx/work/a;

    invoke-virtual {v0}, Landroidx/work/a;->f()Landroidx/work/i;

    move-result-object v0

    .line 32
    iget-object v4, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v4, v4, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v4}, Landroidx/work/i;->b(Ljava/lang/String;)Landroidx/work/h;

    move-result-object v0

    if-nez v0, :cond_7

    .line 34
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v5, v5, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v5, "Could not create Input Merger %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v2, v3}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/k;->l()V

    return-void

    .line 36
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v5, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v5, v5, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v5, v1, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v6, v1, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroidx/work/impl/n/q;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {v0, v4}, Landroidx/work/h;->b(Ljava/util/List;)Landroidx/work/d;

    move-result-object v0

    goto :goto_1

    .line 40
    :goto_2
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v4, v1, Landroidx/work/impl/k;->f:Ljava/lang/String;

    .line 41
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v7, v1, Landroidx/work/impl/k;->s:Ljava/util/List;

    iget-object v8, v1, Landroidx/work/impl/k;->h:Landroidx/work/WorkerParameters$a;

    iget-object v4, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget v9, v4, Landroidx/work/impl/n/p;->m:I

    iget-object v4, v1, Landroidx/work/impl/k;->m:Landroidx/work/a;

    .line 42
    invoke-virtual {v4}, Landroidx/work/a;->e()Ljava/util/concurrent/Executor;

    move-result-object v10

    iget-object v11, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    iget-object v4, v1, Landroidx/work/impl/k;->m:Landroidx/work/a;

    .line 43
    invoke-virtual {v4}, Landroidx/work/a;->m()Landroidx/work/s;

    move-result-object v12

    new-instance v13, Landroidx/work/impl/utils/m;

    iget-object v4, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v14, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    invoke-direct {v13, v4, v14}, Landroidx/work/impl/utils/m;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/o/a;)V

    new-instance v14, Landroidx/work/impl/utils/l;

    iget-object v4, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v15, v1, Landroidx/work/impl/k;->n:Landroidx/work/impl/foreground/a;

    iget-object v3, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    invoke-direct {v14, v4, v15, v3}, Landroidx/work/impl/utils/l;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/a;Landroidx/work/impl/utils/o/a;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/d;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Landroidx/work/impl/utils/o/a;Landroidx/work/s;Landroidx/work/m;Landroidx/work/f;)V

    .line 44
    iget-object v3, v1, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_8

    .line 45
    iget-object v3, v1, Landroidx/work/impl/k;->m:Landroidx/work/a;

    invoke-virtual {v3}, Landroidx/work/a;->m()Landroidx/work/s;

    move-result-object v3

    iget-object v4, v1, Landroidx/work/impl/k;->e:Landroid/content/Context;

    iget-object v5, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v5, v5, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Landroidx/work/s;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v3

    iput-object v3, v1, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    .line 46
    :cond_8
    iget-object v3, v1, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_9

    .line 47
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v4, v4, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "Could not create Worker %s"

    .line 48
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 49
    invoke-virtual {v0, v3, v2, v4}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/k;->l()V

    return-void

    :cond_9
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 52
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v4, v4, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    aput-object v4, v2, v5

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 53
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 54
    invoke-virtual {v0, v3, v2, v4}, Landroidx/work/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/k;->l()V

    return-void

    .line 56
    :cond_a
    iget-object v2, v1, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 57
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->o()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 58
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->n()Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 59
    :cond_b
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object v2

    .line 60
    new-instance v9, Landroidx/work/impl/utils/k;

    iget-object v4, v1, Landroidx/work/impl/k;->e:Landroid/content/Context;

    iget-object v5, v1, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    iget-object v6, v1, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    .line 61
    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->b()Landroidx/work/f;

    move-result-object v7

    iget-object v8, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/utils/k;-><init>(Landroid/content/Context;Landroidx/work/impl/n/p;Landroidx/work/ListenableWorker;Landroidx/work/f;Landroidx/work/impl/utils/o/a;)V

    .line 62
    iget-object v0, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    invoke-interface {v0}, Landroidx/work/impl/utils/o/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v9}, Landroidx/work/impl/utils/k;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    .line 64
    new-instance v3, Landroidx/work/impl/k$a;

    invoke-direct {v3, v1, v0, v2}, Landroidx/work/impl/k$a;-><init>(Landroidx/work/impl/k;Lcom/google/common/util/concurrent/a;Landroidx/work/impl/utils/futures/a;)V

    iget-object v4, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    .line 65
    invoke-interface {v4}, Landroidx/work/impl/utils/o/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 66
    invoke-interface {v0, v3, v4}, Lcom/google/common/util/concurrent/a;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 67
    iget-object v0, v1, Landroidx/work/impl/k;->t:Ljava/lang/String;

    .line 68
    new-instance v3, Landroidx/work/impl/k$b;

    invoke-direct {v3, v1, v2, v0}, Landroidx/work/impl/k$b;-><init>(Landroidx/work/impl/k;Landroidx/work/impl/utils/futures/a;Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/work/impl/k;->k:Landroidx/work/impl/utils/o/a;

    .line 69
    invoke-interface {v0}, Landroidx/work/impl/utils/o/a;->c()Landroidx/work/impl/utils/g;

    move-result-object v0

    .line 70
    invoke-virtual {v2, v3, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    .line 71
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/work/impl/k;->j()V

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    .line 72
    iget-object v2, v1, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 73
    throw v0
.end method

.method private m()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v2, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v1, v2, v4}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Landroidx/work/impl/k;->l:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$c;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$c;->e()Landroidx/work/d;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v4, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Landroidx/work/impl/n/q;->i(Ljava/lang/String;Landroidx/work/d;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    iget-object v4, p0, Landroidx/work/impl/k;->q:Landroidx/work/impl/n/b;

    iget-object v5, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroidx/work/impl/n/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    iget-object v6, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    invoke-interface {v6, v5}, Landroidx/work/impl/n/q;->m(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v6

    sget-object v7, Landroidx/work/WorkInfo$State;->h:Landroidx/work/WorkInfo$State;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Landroidx/work/impl/k;->q:Landroidx/work/impl/n/b;

    .line 10
    invoke-interface {v6, v5}, Landroidx/work/impl/n/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v6

    sget-object v7, Landroidx/work/impl/k;->d:Ljava/lang/String;

    const-string v8, "Setting status to enqueued for %s"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v0

    .line 12
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Throwable;

    .line 13
    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    iget-object v6, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v7, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 15
    iget-object v6, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    invoke-interface {v6, v5, v1, v2}, Landroidx/work/impl/n/q;->s(Ljava/lang/String;J)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 18
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 19
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 20
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    .line 21
    throw v1
.end method

.method private n()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/k;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/k;->d:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/k;->t:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/n/q;->m(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, v1}, Landroidx/work/impl/k;->i(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method private o()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/n/q;->m(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 3
    sget-object v1, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    sget-object v1, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Landroidx/work/impl/n/q;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/n/q;->r(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 8
    throw v0
.end method


# virtual methods
.method public b()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->u:Landroidx/work/impl/utils/futures/a;

    return-object v0
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/work/impl/k;->w:Z

    .line 2
    invoke-direct {p0}, Landroidx/work/impl/k;->n()Z

    .line 3
    iget-object v1, p0, Landroidx/work/impl/k;->v:Lcom/google/common/util/concurrent/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    .line 5
    iget-object v3, p0, Landroidx/work/impl/k;->v:Lcom/google/common/util/concurrent/a;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/k;->j:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->stop()V

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Landroidx/work/impl/k;->i:Landroidx/work/impl/n/p;

    aput-object v1, v0, v2

    const-string v1, "WorkSpec %s is already done. Not interrupting."

    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Landroidx/work/j;->c()Landroidx/work/j;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/k;->d:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v0, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/k;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/n/q;->m(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->A()Landroidx/work/impl/n/n;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/n/n;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Landroidx/work/WorkInfo$State;->e:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/work/impl/k;->l:Landroidx/work/ListenableWorker$a;

    invoke-direct {p0, v0}, Landroidx/work/impl/k;->c(Landroidx/work/ListenableWorker$a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-direct {p0}, Landroidx/work/impl/k;->g()V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 12
    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/k;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/e;

    .line 15
    iget-object v2, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/e;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/k;->m:Landroidx/work/a;

    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Landroidx/work/impl/k;->g:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method l()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroidx/work/impl/k;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Landroidx/work/impl/k;->l:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$a;->e()Landroidx/work/d;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroidx/work/impl/k;->p:Landroidx/work/impl/n/q;

    iget-object v3, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroidx/work/impl/n/q;->i(Ljava/lang/String;Landroidx/work/d;)V

    .line 6
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->g()V

    .line 8
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Landroidx/work/impl/k;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->g()V

    .line 10
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->i(Z)V

    .line 11
    throw v1
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/k;->r:Landroidx/work/impl/n/t;

    iget-object v1, p0, Landroidx/work/impl/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/n/t;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/k;->s:Ljava/util/List;

    .line 2
    invoke-direct {p0, v0}, Landroidx/work/impl/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/k;->t:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Landroidx/work/impl/k;->k()V

    return-void
.end method
