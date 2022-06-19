.class public final Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final firstTask$1:Lscala/collection/parallel/Task;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1;Lscala/collection/parallel/Task;)V
    .locals 0

    .line 489
    iput-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2;->firstTask$1:Lscala/collection/parallel/Task;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 489
    check-cast p1, Lscala/collection/parallel/Task;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2;->apply(Lscala/collection/parallel/Task;)Lscala/collection/parallel/Task;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/Task;)Lscala/collection/parallel/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2;->firstTask$1:Lscala/collection/parallel/Task;

    invoke-interface {p1}, Lscala/collection/parallel/Task;->repr()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Task;->tryMerge(Ljava/lang/Object;)V

    .line 492
    iget-object p1, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2$$anonfun$apply$1$$anonfun$apply$2;->firstTask$1:Lscala/collection/parallel/Task;

    return-object p1
.end method
