.class public final Lscala/collection/parallel/mutable/ParArray$;
.super Lscala/collection/generic/ParFactory;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParFactory<",
        "Lscala/collection/parallel/mutable/ParArray;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParArray$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParArray$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParArray$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 688
    invoke-direct {p0}, Lscala/collection/generic/ParFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 688
    sget-object v0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    return-object v0
.end method

.method private wrapOrRebuild(Ljava/lang/Object;I)Lscala/collection/parallel/mutable/ParArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 701
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    new-instance v0, Lscala/collection/parallel/mutable/ParArray;

    new-instance v1, Lscala/collection/parallel/mutable/ExposedArraySeq;

    invoke-direct {v1, p1, p2}, Lscala/collection/parallel/mutable/ExposedArraySeq;-><init>([Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lscala/collection/parallel/mutable/ParArray;-><init>(Lscala/collection/mutable/ArraySeq;)V

    goto :goto_0

    .line 703
    :cond_0
    new-instance v0, Lscala/collection/parallel/mutable/ParArray;

    new-instance v1, Lscala/collection/parallel/mutable/ExposedArraySeq;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lscala/collection/parallel/mutable/ExposedArraySeq;-><init>([Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lscala/collection/parallel/mutable/ParArray;-><init>(Lscala/collection/mutable/ArraySeq;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanCombineFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanCombineFrom<",
            "Lscala/collection/parallel/mutable/ParArray<",
            "*>;TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 689
    new-instance v0, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParFactory;)V

    return-object v0
.end method

.method public createFromCopy([Ljava/lang/Object;Lscala/reflect/ClassTag;)Lscala/collection/parallel/mutable/ParArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 707
    array-length v0, p1

    invoke-interface {p2, v0}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 708
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    array-length v5, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    invoke-virtual {p0, p2}, Lscala/collection/parallel/mutable/ParArray$;->handoff(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParArray;

    move-result-object p1

    return-object p1
.end method

.method public fromTraversables(Lscala/collection/Seq;)Lscala/collection/parallel/mutable/ParArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;>;)",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 713
    sget-object v0, Lscala/collection/parallel/mutable/package$;->MODULE$:Lscala/collection/parallel/mutable/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner()Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v0

    .line 714
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1;

    invoke-direct {v1, v0}, Lscala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1;-><init>(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V

    invoke-interface {p1, v1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 717
    invoke-interface {v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/mutable/ParArray;

    return-object p1
.end method

.method public handoff(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 695
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lscala/collection/parallel/mutable/ParArray$;->wrapOrRebuild(Ljava/lang/Object;I)Lscala/collection/parallel/mutable/ParArray;

    move-result-object p1

    return-object p1
.end method

.method public handoff(Ljava/lang/Object;I)Lscala/collection/parallel/mutable/ParArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 699
    invoke-direct {p0, p1, p2}, Lscala/collection/parallel/mutable/ParArray$;->wrapOrRebuild(Ljava/lang/Object;I)Lscala/collection/parallel/mutable/ParArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 688
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$;->newBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 691
    sget-object v0, Lscala/collection/parallel/mutable/package$;->MODULE$:Lscala/collection/parallel/mutable/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner()Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v0

    return-object v0
.end method
