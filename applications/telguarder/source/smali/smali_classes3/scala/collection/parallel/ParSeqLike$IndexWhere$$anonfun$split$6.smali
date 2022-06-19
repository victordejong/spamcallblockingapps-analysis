.class public final Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$6;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$IndexWhere;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.IndexWhere;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParSeqLike$IndexWhere;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$IndexWhere;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.IndexWhere;)V"
        }
    .end annotation

    .line 371
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$6;->$outer:Lscala/collection/parallel/ParSeqLike$IndexWhere;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 371
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$6;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$IndexWhere;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$IndexWhere;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.IndexWhere;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 371
    new-instance v0, Lscala/collection/parallel/ParSeqLike$IndexWhere;

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$6;->$outer:Lscala/collection/parallel/ParSeqLike$IndexWhere;

    invoke-virtual {v1}, Lscala/collection/parallel/ParSeqLike$IndexWhere;->scala$collection$parallel$ParSeqLike$IndexWhere$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$IndexWhere$$anonfun$split$6;->$outer:Lscala/collection/parallel/ParSeqLike$IndexWhere;

    iget-object v2, v2, Lscala/collection/parallel/ParSeqLike$IndexWhere;->scala$collection$parallel$ParSeqLike$IndexWhere$$pred:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result v3

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/SeqSplitter;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParSeqLike$IndexWhere;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;ILscala/collection/parallel/SeqSplitter;)V

    return-object v0

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
