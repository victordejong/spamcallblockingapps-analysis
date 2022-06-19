.class public final Lr4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/j;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Lba/g;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lba/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/e;->b:Ljava/lang/Object;

    iput-object p1, p0, Lr4/e;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/e;->c:Lba/g;

    return-void
.end method


# virtual methods
.method public final a(Lr4/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/e;->c:Lba/g;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Li2/y;

    invoke-direct {v1, p0, p1}, Li2/y;-><init>(Lr4/e;Lr4/o;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
