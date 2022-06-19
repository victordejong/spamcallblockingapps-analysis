.class public final Lscala/collection/concurrent/CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1;
.super Lscala/runtime/AbstractFunction1;
.source "TrieMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/concurrent/CNode;->scala$collection$concurrent$CNode$$collectElems()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/concurrent/BasicNode;",
        "Lscala/collection/Iterable<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/concurrent/CNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/CNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 572
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 572
    check-cast p1, Lscala/collection/concurrent/BasicNode;

    invoke-virtual {p0, p1}, Lscala/collection/concurrent/CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1;->apply(Lscala/collection/concurrent/BasicNode;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/concurrent/BasicNode;)Lscala/collection/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/BasicNode;",
            ")",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 572
    instance-of v0, p1, Lscala/collection/concurrent/SNode;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/concurrent/SNode;

    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    new-instance v1, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/concurrent/SNode;->kvPair()Lscala/Tuple2;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/Option$;->option2Iterable(Lscala/Option;)Lscala/collection/Iterable;

    move-result-object p1

    goto :goto_0

    .line 574
    :cond_0
    instance-of v0, p1, Lscala/collection/concurrent/INode;

    if-eqz v0, :cond_4

    check-cast p1, Lscala/collection/concurrent/INode;

    iget-object p1, p1, Lscala/collection/concurrent/INode;->mainnode:Lscala/collection/concurrent/MainNode;

    .line 575
    instance-of v0, p1, Lscala/collection/concurrent/TNode;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/concurrent/TNode;

    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    new-instance v1, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/concurrent/TNode;->kvPair()Lscala/Tuple2;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/Option$;->option2Iterable(Lscala/Option;)Lscala/collection/Iterable;

    move-result-object p1

    goto :goto_0

    .line 576
    :cond_1
    instance-of v0, p1, Lscala/collection/concurrent/LNode;

    if-eqz v0, :cond_2

    check-cast p1, Lscala/collection/concurrent/LNode;

    invoke-virtual {p1}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_0

    .line 577
    :cond_2
    instance-of v0, p1, Lscala/collection/concurrent/CNode;

    if-eqz v0, :cond_3

    check-cast p1, Lscala/collection/concurrent/CNode;

    invoke-virtual {p1}, Lscala/collection/concurrent/CNode;->scala$collection$concurrent$CNode$$collectElems()Lscala/collection/Seq;

    move-result-object p1

    :goto_0
    return-object p1

    .line 574
    :cond_3
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 572
    :cond_4
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
