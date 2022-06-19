.class public final Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$CopyToArray;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.CopyToArray<TU;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$CopyToArray;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$CopyToArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.CopyToArray<TU;TThis;>;)V"
        }
    .end annotation

    .line 1328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;->$outer:Lscala/collection/parallel/ParIterableLike$CopyToArray;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1328
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$CopyToArray;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$CopyToArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.CopyToArray<TU;TThis;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1328
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 1329
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/IterableSplitter;

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;->$outer:Lscala/collection/parallel/ParIterableLike$CopyToArray;

    iget v2, v2, Lscala/collection/parallel/ParIterableLike$CopyToArray;->scala$collection$parallel$ParIterableLike$CopyToArray$$len:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v6

    .line 1330
    new-instance v0, Lscala/collection/parallel/ParIterableLike$CopyToArray;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;->$outer:Lscala/collection/parallel/ParIterableLike$CopyToArray;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$CopyToArray;->scala$collection$parallel$ParIterableLike$CopyToArray$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v4

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;->$outer:Lscala/collection/parallel/ParIterableLike$CopyToArray;

    iget v1, v1, Lscala/collection/parallel/ParIterableLike$CopyToArray;->scala$collection$parallel$ParIterableLike$CopyToArray$$from:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    add-int v5, v1, v2

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$CopyToArray$$anonfun$split$24;->$outer:Lscala/collection/parallel/ParIterableLike$CopyToArray;

    iget-object v7, v1, Lscala/collection/parallel/ParIterableLike$CopyToArray;->scala$collection$parallel$ParIterableLike$CopyToArray$$array:Ljava/lang/Object;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lscala/collection/parallel/IterableSplitter;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lscala/collection/parallel/ParIterableLike$CopyToArray;-><init>(Lscala/collection/parallel/ParIterableLike;IILjava/lang/Object;Lscala/collection/parallel/IterableSplitter;)V

    return-object v0

    .line 1328
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
