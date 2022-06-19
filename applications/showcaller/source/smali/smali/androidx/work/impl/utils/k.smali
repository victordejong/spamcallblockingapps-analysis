.class public Landroidx/work/impl/utils/k;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field final e:Landroidx/work/impl/utils/futures/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroid/content/Context;

.field final g:Landroidx/work/impl/n/p;

.field final h:Landroidx/work/ListenableWorker;

.field final i:Landroidx/work/f;

.field final j:Landroidx/work/impl/utils/o/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    .line 1
    invoke-static {v0}, Landroidx/work/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/k;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/n/p;Landroidx/work/ListenableWorker;Landroidx/work/f;Landroidx/work/impl/utils/o/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/k;->e:Landroidx/work/impl/utils/futures/a;

    .line 3
    iput-object p1, p0, Landroidx/work/impl/utils/k;->f:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/work/impl/utils/k;->g:Landroidx/work/impl/n/p;

    .line 5
    iput-object p3, p0, Landroidx/work/impl/utils/k;->h:Landroidx/work/ListenableWorker;

    .line 6
    iput-object p4, p0, Landroidx/work/impl/utils/k;->i:Landroidx/work/f;

    .line 7
    iput-object p5, p0, Landroidx/work/impl/utils/k;->j:Landroidx/work/impl/utils/o/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/k;->e:Landroidx/work/impl/utils/futures/a;

    return-object v0
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/k;->g:Landroidx/work/impl/n/p;

    iget-boolean v0, v0, Landroidx/work/impl/n/p;->s:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/os/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/k;->j:Landroidx/work/impl/utils/o/a;

    invoke-interface {v1}, Landroidx/work/impl/utils/o/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/utils/k$a;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/utils/k$a;-><init>(Landroidx/work/impl/utils/k;Landroidx/work/impl/utils/futures/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    new-instance v1, Landroidx/work/impl/utils/k$b;

    invoke-direct {v1, p0, v0}, Landroidx/work/impl/utils/k$b;-><init>(Landroidx/work/impl/utils/k;Landroidx/work/impl/utils/futures/a;)V

    iget-object v2, p0, Landroidx/work/impl/utils/k;->j:Landroidx/work/impl/utils/o/a;

    .line 5
    invoke-interface {v2}, Landroidx/work/impl/utils/o/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/k;->e:Landroidx/work/impl/utils/futures/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/a;->q(Ljava/lang/Object;)Z

    return-void
.end method
