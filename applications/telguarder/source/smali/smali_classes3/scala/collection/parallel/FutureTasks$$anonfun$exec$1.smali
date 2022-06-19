.class public final Lscala/collection/parallel/FutureTasks$$anonfun$exec$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/FutureTasks;->exec(Lscala/collection/parallel/Task;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks;)V
    .locals 0

    .line 507
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 507
    check-cast p1, Lscala/collection/parallel/Task;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$exec$1;->apply(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)TR;"
        }
    .end annotation

    .line 508
    invoke-interface {p1}, Lscala/collection/parallel/Task;->forwardThrowable()V

    .line 509
    invoke-interface {p1}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
