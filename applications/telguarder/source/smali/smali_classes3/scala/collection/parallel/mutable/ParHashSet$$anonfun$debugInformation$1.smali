.class public final Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashSet;->debugInformation()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Function1<",
        "Ljava/lang/Object;",
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
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParHashSet;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->apply(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Parallel flat hash table set"

    .line 95
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "No. elems: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashSet;->tableSize()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Table length: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashSet;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Table: "

    .line 98
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashSet;->table()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParHashSet;->table()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Sizemap: "

    .line 100
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashSet;->sizemap()[I

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1;->$outer:Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParHashSet;->sizemap()[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
