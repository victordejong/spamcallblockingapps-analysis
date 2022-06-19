.class public abstract Lscala/collection/ViewMkString$class;
.super Ljava/lang/Object;
.source "TraversableViewLike.scala"


# direct methods
.method public static $init$(Lscala/collection/ViewMkString;)V
    .locals 0

    return-void
.end method

.method public static addString(Lscala/collection/ViewMkString;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 33
    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 34
    move-object p2, p0

    check-cast p2, Lscala/collection/generic/GenericTraversableTemplate;

    new-instance v1, Lscala/collection/ViewMkString$$anonfun$addString$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lscala/collection/ViewMkString$$anonfun$addString$1;-><init>(Lscala/collection/ViewMkString;Lscala/runtime/BooleanRef;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lscala/collection/generic/GenericTraversableTemplate;->foreach(Lscala/Function1;)V

    .line 38
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    return-object p1
.end method

.method public static mkString(Lscala/collection/ViewMkString;)Ljava/lang/String;
    .locals 1

    .line 26
    check-cast p0, Lscala/collection/TraversableOnce;

    const-string v0, ""

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/ViewMkString;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    check-cast p0, Lscala/collection/TraversableOnce;

    const-string v0, ""

    invoke-interface {p0, v0, p1, v0}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mkString(Lscala/collection/ViewMkString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-interface {p0}, Lscala/collection/ViewMkString;->thisSeq()Lscala/collection/Seq;

    move-result-object p0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0, v0, p1, p2, p3}, Lscala/collection/Seq;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static thisSeq(Lscala/collection/ViewMkString;)Lscala/collection/Seq;
    .locals 1

    .line 22
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    check-cast p0, Lscala/collection/TraversableOnce;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->result()Lscala/collection/mutable/ArrayBuffer;

    move-result-object p0

    return-object p0
.end method
