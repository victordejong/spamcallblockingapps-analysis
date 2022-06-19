.class final Landroidx/work/CoroutineWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/CoroutineWorker;


# direct methods
.method constructor <init>(Landroidx/work/CoroutineWorker;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/CoroutineWorker$1;->a:Landroidx/work/CoroutineWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 49
    iget-object v0, p0, Landroidx/work/CoroutineWorker$1;->a:Landroidx/work/CoroutineWorker;

    .line 1044
    iget-object v0, v0, Landroidx/work/CoroutineWorker;->b:Landroidx/work/impl/utils/a/c;

    .line 49
    invoke-virtual {v0}, Landroidx/work/impl/utils/a/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Landroidx/work/CoroutineWorker$1;->a:Landroidx/work/CoroutineWorker;

    .line 2043
    iget-object v0, v0, Landroidx/work/CoroutineWorker;->a:Lkotlinx/coroutines/x;

    .line 50
    check-cast v0, Lkotlinx/coroutines/bv;

    const/4 v1, 0x0

    .line 2192
    invoke-interface {v0, v1}, Lkotlinx/coroutines/bv;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method
