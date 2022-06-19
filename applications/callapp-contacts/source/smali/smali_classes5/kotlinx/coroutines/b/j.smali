.class public abstract Lkotlinx/coroutines/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008 \u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0012\u0010\t\u001a\u00020\n8\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/Task;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "()V",
        "submissionTime",
        "",
        "taskContext",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "(JLkotlinx/coroutines/scheduling/TaskContext;)V",
        "mode",
        "",
        "getMode",
        "()I",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public g:J

.field public h:Lkotlinx/coroutines/b/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    sget-object v0, Lkotlinx/coroutines/b/h;->a:Lkotlinx/coroutines/b/h;

    check-cast v0, Lkotlinx/coroutines/b/k;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/b/j;-><init>(JLkotlinx/coroutines/b/k;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/b/k;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/b/j;->g:J

    iput-object p3, p0, Lkotlinx/coroutines/b/j;->h:Lkotlinx/coroutines/b/k;

    return-void
.end method
