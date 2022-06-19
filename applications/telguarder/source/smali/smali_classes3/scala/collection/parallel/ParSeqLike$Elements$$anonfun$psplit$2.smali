.class public final Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSeqLike$Elements;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Elements;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike$Elements;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike$Elements;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Elements;)V"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/ParSeqLike$Elements;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$Elements;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParSeqLike$Elements;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Elements;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2$$anon$2;-><init>(Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;Lscala/Tuple2;)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$Elements$$anonfun$$$outer()Lscala/collection/parallel/ParSeqLike$Elements;
    .locals 1

    .line 85
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;->$outer:Lscala/collection/parallel/ParSeqLike$Elements;

    return-object v0
.end method
