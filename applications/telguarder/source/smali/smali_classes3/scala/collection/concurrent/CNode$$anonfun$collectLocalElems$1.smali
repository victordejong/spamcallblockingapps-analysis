.class public final Lscala/collection/concurrent/CNode$$anonfun$collectLocalElems$1;
.super Lscala/runtime/AbstractFunction1;
.source "TrieMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/concurrent/CNode;->collectLocalElems()Lscala/collection/Seq;
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
        "Ljava/lang/String;",
        ">;>;",
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

    .line 581
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 581
    check-cast p1, Lscala/collection/concurrent/BasicNode;

    invoke-virtual {p0, p1}, Lscala/collection/concurrent/CNode$$anonfun$collectLocalElems$1;->apply(Lscala/collection/concurrent/BasicNode;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/concurrent/BasicNode;)Lscala/collection/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/BasicNode;",
            ")",
            "Lscala/collection/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    instance-of v0, p1, Lscala/collection/concurrent/SNode;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/concurrent/SNode;

    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    new-instance v1, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/concurrent/SNode;->kvPair()Lscala/Tuple2;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/Option$;->option2Iterable(Lscala/Option;)Lscala/collection/Iterable;

    move-result-object p1

    goto :goto_0

    .line 583
    :cond_0
    instance-of v0, p1, Lscala/collection/concurrent/INode;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/concurrent/INode;

    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    new-instance v1, Lscala/Some;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lscala/collection/immutable/StringOps;->drop(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v2, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/Option$;->option2Iterable(Lscala/Option;)Lscala/collection/Iterable;

    move-result-object p1

    :goto_0
    return-object p1

    .line 581
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
