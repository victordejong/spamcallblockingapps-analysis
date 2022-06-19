.class final Landroidx/h/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/h/b/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/h/b/d;


# direct methods
.method constructor <init>(Landroidx/h/b/d;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/h/b/d$1;->a:Landroidx/h/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/h/b/d$1;->a:Landroidx/h/b/d;

    iget-object v0, v0, Landroidx/h/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    .line 95
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    iget-object v0, p0, Landroidx/h/b/d$1;->a:Landroidx/h/b/d;

    invoke-virtual {v0}, Landroidx/h/b/d;->a()Ljava/lang/Object;

    move-result-object v2

    .line 97
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Landroidx/h/b/d$1;->a:Landroidx/h/b/d;

    invoke-virtual {v0, v2}, Landroidx/h/b/d;->d(Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 99
    :try_start_1
    iget-object v3, p0, Landroidx/h/b/d$1;->a:Landroidx/h/b/d;

    iget-object v3, v3, Landroidx/h/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 102
    iget-object v1, p0, Landroidx/h/b/d$1;->a:Landroidx/h/b/d;

    invoke-virtual {v1, v2}, Landroidx/h/b/d;->d(Ljava/lang/Object;)V

    throw v0
.end method
