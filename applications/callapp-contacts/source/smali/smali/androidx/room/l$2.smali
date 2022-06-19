.class final Landroidx/room/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/l;


# direct methods
.method constructor <init>(Landroidx/room/l;)V
    .locals 0

    .line 116
    iput-object p1, p0, Landroidx/room/l$2;->a:Landroidx/room/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 120
    iget-object v0, p0, Landroidx/room/l$2;->a:Landroidx/room/l;

    invoke-virtual {v0}, Landroidx/room/l;->c()Z

    move-result v0

    .line 121
    iget-object v1, p0, Landroidx/room/l$2;->a:Landroidx/room/l;

    iget-object v1, v1, Landroidx/room/l;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroidx/room/l$2;->a:Landroidx/room/l;

    invoke-virtual {v0}, Landroidx/room/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/l$2;->a:Landroidx/room/l;

    iget-object v1, v1, Landroidx/room/l;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
