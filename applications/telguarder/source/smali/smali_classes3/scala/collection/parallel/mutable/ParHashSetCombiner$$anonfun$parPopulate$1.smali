.class public final Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner;->parPopulate()Lscala/collection/mutable/FlatHashTable$Contents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final leftinserts$1:Lscala/runtime/IntRef;

.field private final table$1:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;->table$1:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    iput-object p3, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;->leftinserts$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 5

    .line 151
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;->leftinserts$1:Lscala/runtime/IntRef;

    iget v1, v0, Lscala/runtime/IntRef;->elem:I

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;->table$1:Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->tableLength()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->insertEntry(IILjava/lang/Object;)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
