.class public Lscala/collection/parallel/mutable/ParArray$Map;
.super Ljava/lang/Object;
.source "ParArray.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Map"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TT;>.Map<TS;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParArray;

.field private final f:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TT;TS;>;"
        }
    .end annotation
.end field

.field private final howmany:I

.field private final offset:I

.field private result:Lscala/runtime/BoxedUnit;

.field private final targetarr:[Ljava/lang/Object;

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray;Lscala/Function1;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;",
            "Lscala/Function1<",
            "TT;TS;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 648
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParArray$Map;->f:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/parallel/mutable/ParArray$Map;->targetarr:[Ljava/lang/Object;

    iput p4, p0, Lscala/collection/parallel/mutable/ParArray$Map;->offset:I

    iput p5, p0, Lscala/collection/parallel/mutable/ParArray$Map;->howmany:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$Map;->$outer:Lscala/collection/parallel/mutable/ParArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 649
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$Map;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 648
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 652
    iget-object p1, p0, Lscala/collection/parallel/mutable/ParArray$Map;->targetarr:[Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$Map;->scala$collection$parallel$mutable$ParArray$Map$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v0

    .line 654
    iget v1, p0, Lscala/collection/parallel/mutable/ParArray$Map;->offset:I

    .line 655
    iget v2, p0, Lscala/collection/parallel/mutable/ParArray$Map;->howmany:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 657
    iget-object v3, p0, Lscala/collection/parallel/mutable/ParArray$Map;->f:Lscala/Function1;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 648
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->merge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method

.method public mergeThrowables(Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "**>;)V"
        }
    .end annotation

    .line 648
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 648
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$Map;->result()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public result()V
    .locals 0

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 648
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$Map;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public result_$eq(Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$Map;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParArray$Map$$$outer()Lscala/collection/parallel/mutable/ParArray;
    .locals 1

    .line 648
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$Map;->$outer:Lscala/collection/parallel/mutable/ParArray;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 4

    .line 665
    iget v0, p0, Lscala/collection/parallel/mutable/ParArray$Map;->howmany:I

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$Map;->scala$collection$parallel$mutable$ParArray$Map$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray;->length()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$Map;->scala$collection$parallel$mutable$ParArray$Map$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParArray;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/parallel/TaskSupport;->parallelismLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/parallel/package$;->thresholdFromSize(II)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 648
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic split()Lscala/collection/Seq;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$Map;->split()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/immutable/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.Map<TS;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 662
    iget v1, v0, Lscala/collection/parallel/mutable/ParArray$Map;->howmany:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 663
    sget-object v9, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/mutable/ParArray$Map;

    new-instance v11, Lscala/collection/parallel/mutable/ParArray$Map;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParArray$Map;->scala$collection$parallel$mutable$ParArray$Map$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v4

    iget-object v5, v0, Lscala/collection/parallel/mutable/ParArray$Map;->f:Lscala/Function1;

    iget-object v6, v0, Lscala/collection/parallel/mutable/ParArray$Map;->targetarr:[Ljava/lang/Object;

    iget v7, v0, Lscala/collection/parallel/mutable/ParArray$Map;->offset:I

    move-object v3, v11

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lscala/collection/parallel/mutable/ParArray$Map;-><init>(Lscala/collection/parallel/mutable/ParArray;Lscala/Function1;[Ljava/lang/Object;II)V

    const/4 v3, 0x0

    aput-object v11, v2, v3

    new-instance v3, Lscala/collection/parallel/mutable/ParArray$Map;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/mutable/ParArray$Map;->scala$collection$parallel$mutable$ParArray$Map$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v13

    iget-object v14, v0, Lscala/collection/parallel/mutable/ParArray$Map;->f:Lscala/Function1;

    iget-object v15, v0, Lscala/collection/parallel/mutable/ParArray$Map;->targetarr:[Ljava/lang/Object;

    iget v4, v0, Lscala/collection/parallel/mutable/ParArray$Map;->offset:I

    add-int v16, v4, v1

    iget v4, v0, Lscala/collection/parallel/mutable/ParArray$Map;->howmany:I

    sub-int v17, v4, v1

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lscala/collection/parallel/mutable/ParArray$Map;-><init>(Lscala/collection/parallel/mutable/ParArray;Lscala/Function1;[Ljava/lang/Object;II)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v10, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v9, v1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v1

    return-object v1
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 648
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$Map;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 648
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$Map;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 648
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 648
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
