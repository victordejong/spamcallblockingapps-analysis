.class public final Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParFlatHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->debugInformation()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Function1<",
        "Ljava/lang/String;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParFlatHashTable<",
            "TT;>.ParFlatHashTableIterator;)V"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->apply(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Parallel flat hash table iterator"

    .line 72
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "---------------------------------"

    .line 73
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Traversed/total: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    iget v1, v1, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->scala$collection$parallel$mutable$ParFlatHashTable$ParFlatHashTableIterator$$traversed:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->totalsize()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Table idx/until: "

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->idx()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->until()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Table length: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    iget-object v1, v1, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->scala$collection$parallel$mutable$ParFlatHashTable$ParFlatHashTableIterator$$itertable:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Table: "

    .line 77
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    iget-object v1, v1, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->scala$collection$parallel$mutable$ParFlatHashTable$ParFlatHashTableIterator$$itertable:[Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    iget-object v2, v2, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->scala$collection$parallel$mutable$ParFlatHashTable$ParFlatHashTableIterator$$itertable:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Sizemap: "

    .line 79
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->scala$collection$parallel$mutable$ParFlatHashTable$ParFlatHashTableIterator$$$outer()Lscala/collection/parallel/mutable/ParFlatHashTable;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/mutable/ParFlatHashTable;->sizemap()[I

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator;->scala$collection$parallel$mutable$ParFlatHashTable$ParFlatHashTableIterator$$$outer()Lscala/collection/parallel/mutable/ParFlatHashTable;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/mutable/ParFlatHashTable;->sizemap()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
