.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator$$anonfun$reverse2combiner$1;)V"
        }
    .end annotation

    .line 542
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .line 542
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v1, v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->cb$4:Lscala/collection/parallel/Combiner;

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$super$reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 542
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v1, v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->cb$4:Lscala/collection/parallel/Combiner;

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$super$reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    return-void
.end method
