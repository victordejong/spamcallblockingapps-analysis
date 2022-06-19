.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TT;>.ParArrayIterator;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

.field private final traversed$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;)V"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iput-object p2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->apply(I)Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 107
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p1

    .line 108
    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    iput p1, v1, Lscala/runtime/IntRef;->elem:I

    .line 109
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v0, p1, v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;-><init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iget-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->traversed$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    iget-object v3, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;-><init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method
