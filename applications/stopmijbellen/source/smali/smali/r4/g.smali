.class public final Lr4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/j;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Lr4/a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lr4/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/g;->b:Ljava/lang/Object;

    iput-object p1, p0, Lr4/g;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/g;->c:Lr4/a;

    return-void
.end method


# virtual methods
.method public final a(Lr4/o;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lr4/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/g;->c:Lr4/a;

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lr4/f;

    invoke-direct {v1, p0, p1}, Lr4/f;-><init>(Lr4/g;Lr4/o;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
