.class public final Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$Slice;->split()Lscala/collection/Seq;
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
        "TT;TRepr;TSequential;>.Slice<TU;TThis;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$Slice;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$Slice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Slice<TU;TThis;>;)V"
        }
    .end annotation

    .line 1212
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1212
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$Slice;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterableLike$Slice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Slice<TU;TThis;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1212
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 1213
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    iget v1, v1, Lscala/collection/parallel/ParIterableLike$Slice;->scala$collection$parallel$ParIterableLike$Slice$$from:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v1

    sub-int v4, v0, v1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 1214
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    iget v1, v1, Lscala/collection/parallel/ParIterableLike$Slice;->scala$collection$parallel$ParIterableLike$Slice$$until:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/parallel/IterableSplitter;

    invoke-interface {v3}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v1

    sub-int v5, v0, v1

    .line 1215
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Slice;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$Slice;->scala$collection$parallel$ParIterableLike$Slice$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v3

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$10;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    iget-object v6, v1, Lscala/collection/parallel/ParIterableLike$Slice;->scala$collection$parallel$ParIterableLike$Slice$$cbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lscala/collection/parallel/IterableSplitter;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lscala/collection/parallel/ParIterableLike$Slice;-><init>(Lscala/collection/parallel/ParIterableLike;IILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

    return-object v0

    .line 1212
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
