.class public abstract Lkotlinx/coroutines/bz;
.super Lkotlinx/coroutines/ab;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/bb;
.implements Lkotlinx/coroutines/bq;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/JobNode;",
        "Lkotlinx/coroutines/CompletionHandlerBase;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/Incomplete;",
        "()V",
        "isActive",
        "",
        "()Z",
        "job",
        "Lkotlinx/coroutines/JobSupport;",
        "getJob",
        "()Lkotlinx/coroutines/JobSupport;",
        "setJob",
        "(Lkotlinx/coroutines/JobSupport;)V",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "dispose",
        "",
        "toString",
        "",
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
.field public c:Lkotlinx/coroutines/ca;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1348
    invoke-direct {p0}, Lkotlinx/coroutines/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1355
    iget-object v0, p0, Lkotlinx/coroutines/bz;->c:Lkotlinx/coroutines/ca;

    if-nez v0, :cond_0

    const-string v1, "job"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 2573
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v1

    .line 1592
    instance-of v2, v1, Lkotlinx/coroutines/bz;

    if-eqz v2, :cond_2

    if-ne v1, p0, :cond_1

    .line 1595
    sget-object v2, Lkotlinx/coroutines/ca;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/cb;->b()Lkotlinx/coroutines/be;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void

    .line 1597
    :cond_2
    instance-of v0, v1, Lkotlinx/coroutines/bq;

    if-eqz v0, :cond_3

    .line 1599
    check-cast v1, Lkotlinx/coroutines/bq;

    invoke-interface {v1}, Lkotlinx/coroutines/bq;->ax_()Lkotlinx/coroutines/cf;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/bz;->ay_()Z

    :cond_3
    return-void
.end method

.method public final ax_()Lkotlinx/coroutines/cf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lkotlinx/coroutines/ca;
    .locals 2

    .line 1352
    iget-object v0, p0, Lkotlinx/coroutines/bz;->c:Lkotlinx/coroutines/ca;

    if-nez v0, :cond_0

    const-string v1, "job"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4013
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/bz;->c:Lkotlinx/coroutines/ca;

    if-nez v1, :cond_0

    const-string v2, "job"

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 5013
    :cond_0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
