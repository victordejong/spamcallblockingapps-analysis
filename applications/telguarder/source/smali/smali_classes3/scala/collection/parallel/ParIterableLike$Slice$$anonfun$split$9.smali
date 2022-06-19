.class public final Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$9;
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
        "Ljava/lang/Object;",
        ">;",
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

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$9;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1212
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$9;->apply(Lscala/Tuple2;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1212
    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/IterableSplitter;

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$9;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    iget v1, v1, Lscala/collection/parallel/ParIterableLike$Slice;->scala$collection$parallel$ParIterableLike$Slice$$from:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Slice$$anonfun$split$9;->$outer:Lscala/collection/parallel/ParIterableLike$Slice;

    iget v0, v0, Lscala/collection/parallel/ParIterableLike$Slice;->scala$collection$parallel$ParIterableLike$Slice$$until:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_2
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
