.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator$$anonfun$copy2builder$1;)V"
        }
    .end annotation

    .line 471
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .line 471
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 5

    .line 472
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v1, v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->cb$3:Lscala/collection/mutable/Builder;

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v2, v2, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v3, v3, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    iget-object v4, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v4}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$copy2builder_quick(Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V

    .line 473
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-void
.end method
