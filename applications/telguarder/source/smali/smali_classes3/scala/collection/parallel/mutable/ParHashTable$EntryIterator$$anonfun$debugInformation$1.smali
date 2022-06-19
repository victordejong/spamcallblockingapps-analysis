.class public final Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->debugInformation()Ljava/lang/String;
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
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashTable<",
            "TK;TEntry;>.EntryIterator<TT;TIterRepr;>;)V"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->apply(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/--------------------\\"

    .line 60
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Parallel hash table entry iterator"

    .line 61
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "total hash table elements: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$$outer()Lscala/collection/parallel/mutable/ParHashTable;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/mutable/ParHashTable;->tableSize()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "pos: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$idx()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "until: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$until()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "traversed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$traversed()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "totalsize: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$totalsize()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "current entry: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es()Lscala/collection/mutable/HashEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "underlying from "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$idx()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " until "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$until()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v3, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$itertable()[Lscala/collection/mutable/HashEntry;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$idx()I

    move-result v3

    iget-object v4, p0, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;

    invoke-virtual {v4}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator;->scala$collection$parallel$mutable$ParHashTable$EntryIterator$$until()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lscala/collection/mutable/ArrayOps;->slice(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1$$anonfun$apply$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1$$anonfun$apply$1;-><init>(Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;)V

    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v4, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    const-string v1, " | "

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\\--------------------/"

    .line 70
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
