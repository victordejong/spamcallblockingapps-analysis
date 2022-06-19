.class public final Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/parallel/ThrowableOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParallelCollectionImplicits$;->throwable2ops(Ljava/lang/Throwable;)Lscala/collection/parallel/ThrowableOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final self$1:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;->self$1:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alongWith(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6

    .line 93
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;->self$1:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/collection/parallel/CompositeThrowable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/CompositeThrowable;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/collection/parallel/CompositeThrowable;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/CompositeThrowable;

    new-instance v0, Lscala/collection/parallel/CompositeThrowable;

    invoke-virtual {v1}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Lscala/collection/Set;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/collection/parallel/CompositeThrowable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/CompositeThrowable;

    new-instance v1, Lscala/collection/parallel/CompositeThrowable;

    invoke-virtual {v0}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V

    move-object v0, v1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/collection/parallel/CompositeThrowable;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/CompositeThrowable;

    new-instance v0, Lscala/collection/parallel/CompositeThrowable;

    invoke-virtual {p1}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object p1

    iget-object v1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;->self$1:Ljava/lang/Throwable;

    invoke-interface {p1, v1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lscala/collection/parallel/CompositeThrowable;

    sget-object v1, Lscala/collection/Set$;->MODULE$:Lscala/collection/Set$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    iget-object v5, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$1;->self$1:Ljava/lang/Throwable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/Set;

    invoke-direct {v0, p1}, Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V

    :goto_0
    return-object v0
.end method
