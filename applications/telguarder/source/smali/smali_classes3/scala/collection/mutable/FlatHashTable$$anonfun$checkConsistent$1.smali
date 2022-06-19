.class public final Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "FlatHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/FlatHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/mutable/FlatHashTable;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/FlatHashTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable<",
            "TA;>;)V"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 232
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 232
    invoke-virtual {p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 3

    .line 233
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/FlatHashTable;->containsElem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;-><init>(Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;I)V

    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "assertion failed: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->apply()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic scala$collection$mutable$FlatHashTable$$anonfun$$$outer()Lscala/collection/mutable/FlatHashTable;
    .locals 1

    .line 232
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    return-object v0
.end method
