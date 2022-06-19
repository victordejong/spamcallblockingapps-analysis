.class public final Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2$$anon$2;
.super Lscala/collection/parallel/ParSeqLike$Elements;
.source "ParSeqLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Elements;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;Lscala/Tuple2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Elements$$anonfun$psplit$2;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p1, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/ParSeqLike$Elements;

    invoke-virtual {v0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    iget-object v1, p1, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/ParSeqLike$Elements;

    iget v1, v1, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$start:I

    invoke-virtual {p2}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p1, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/ParSeqLike$Elements;

    iget v2, v2, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$start:I

    invoke-virtual {p2}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p2

    add-int/2addr v2, p2

    iget-object p1, p1, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/ParSeqLike$Elements;

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Elements;->end()I

    move-result p1

    sget-object p2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lscala/collection/parallel/ParSeqLike$Elements;-><init>(Lscala/collection/parallel/ParSeqLike;II)V

    return-void
.end method
