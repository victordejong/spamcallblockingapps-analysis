.class final Landroidx/room/l;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final g:Landroidx/room/h;

.field final h:Z

.field final i:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final j:Landroidx/room/e$b;

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final n:Ljava/lang/Runnable;

.field final o:Ljava/lang/Runnable;

.field private final p:Landroidx/room/d;


# direct methods
.method constructor <init>(Landroidx/room/h;Landroidx/room/d;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/h;",
            "Landroidx/room/d;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/l;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Landroidx/room/l$1;

    invoke-direct {v0, p0}, Landroidx/room/l$1;-><init>(Landroidx/room/l;)V

    iput-object v0, p0, Landroidx/room/l;->n:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Landroidx/room/l$2;

    invoke-direct {v0, p0}, Landroidx/room/l$2;-><init>(Landroidx/room/l;)V

    iput-object v0, p0, Landroidx/room/l;->o:Ljava/lang/Runnable;

    .line 135
    iput-object p1, p0, Landroidx/room/l;->g:Landroidx/room/h;

    .line 136
    iput-boolean p3, p0, Landroidx/room/l;->h:Z

    .line 137
    iput-object p4, p0, Landroidx/room/l;->i:Ljava/util/concurrent/Callable;

    .line 138
    iput-object p2, p0, Landroidx/room/l;->p:Landroidx/room/d;

    .line 139
    new-instance p1, Landroidx/room/l$3;

    invoke-direct {p1, p0, p5}, Landroidx/room/l$3;-><init>(Landroidx/room/l;[Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/l;->j:Landroidx/room/e$b;

    return-void
.end method

.method static synthetic a(Landroidx/room/l;Ljava/lang/Object;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroidx/room/l;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 149
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->a()V

    .line 150
    iget-object v0, p0, Landroidx/room/l;->p:Landroidx/room/d;

    .line 1053
    iget-object v0, v0, Landroidx/room/d;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0}, Landroidx/room/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/l;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->b()V

    .line 157
    iget-object v0, p0, Landroidx/room/l;->p:Landroidx/room/d;

    .line 1057
    iget-object v0, v0, Landroidx/room/d;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 161
    iget-boolean v0, p0, Landroidx/room/l;->h:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/room/l;->g:Landroidx/room/h;

    .line 1385
    iget-object v0, v0, Landroidx/room/h;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Landroidx/room/l;->g:Landroidx/room/h;

    .line 2377
    iget-object v0, v0, Landroidx/room/h;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method
