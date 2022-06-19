.class public final Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashTable$Contents;->debugInformation()Ljava/lang/String;
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
.field private final synthetic $outer:Lscala/collection/mutable/HashTable$Contents;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;TEntry;>;)V"
        }
    .end annotation

    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 490
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->apply(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Hash table contents"

    .line 491
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "-------------------"

    .line 492
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Table: ["

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v1, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    iget-object v2, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v2}, Lscala/collection/mutable/HashTable$Contents;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v3}, Lscala/collection/mutable/HashTable$Contents;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Table size: "

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v2}, Lscala/collection/mutable/HashTable$Contents;->tableSize()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v2}, Lscala/collection/mutable/HashTable$Contents;->loadFactor()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Seedvalue: "

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v2}, Lscala/collection/mutable/HashTable$Contents;->seedvalue()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Threshold: "

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v2}, Lscala/collection/mutable/HashTable$Contents;->threshold()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Sizemap: ["

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v2, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    iget-object v3, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v3}, Lscala/collection/mutable/HashTable$Contents;->sizemap()[I

    move-result-object v3

    iget-object v5, p0, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;->$outer:Lscala/collection/mutable/HashTable$Contents;

    invoke-virtual {v5}, Lscala/collection/mutable/HashTable$Contents;->sizemap()[I

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
