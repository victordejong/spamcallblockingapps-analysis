.class public final Lscala/collection/mutable/StackProxy$$anon$1;
.super Lscala/collection/mutable/Stack;
.source "StackProxy.scala"

# interfaces
.implements Lscala/collection/mutable/StackProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/StackProxy;->clone()Lscala/collection/mutable/Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/Stack<",
        "TA;>;",
        "Lscala/collection/mutable/StackProxy<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/StackProxy;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/StackProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/StackProxy<",
            "TA;>;)V"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/StackProxy$$anon$1;->$outer:Lscala/collection/mutable/StackProxy;

    invoke-direct {p0}, Lscala/collection/mutable/Stack;-><init>()V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->$init$(Lscala/collection/mutable/StackProxy;)V

    return-void
.end method


# virtual methods
.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/StackProxy<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/mutable/StackProxy$class;->$plus$eq(Lscala/collection/mutable/StackProxy;Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/mutable/StackProxy$class;->apply(Lscala/collection/mutable/StackProxy;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StackProxy$$anon$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->clear(Lscala/collection/mutable/StackProxy;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/mutable/StackProxy$$anon$1;->clone()Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->clone(Lscala/collection/mutable/StackProxy;)Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lscala/Proxy$class;->equals(Lscala/Proxy;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 102
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->isEmpty(Lscala/collection/mutable/StackProxy;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->iterator(Lscala/collection/mutable/StackProxy;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->length(Lscala/collection/mutable/StackProxy;)I

    move-result v0

    return v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->pop(Lscala/collection/mutable/StackProxy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StackProxy$$anon$1;->push(Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Stack;

    return-object p1
.end method

.method public bridge synthetic push(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Stack;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/StackProxy$$anon$1;->push(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Stack;

    return-object p1
.end method

.method public push(Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/StackProxy<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/mutable/StackProxy$class;->push(Lscala/collection/mutable/StackProxy;Ljava/lang/Object;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    return-object p1
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/StackProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/mutable/StackProxy<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/StackProxy$class;->push(Lscala/collection/mutable/StackProxy;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Stack;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StackProxy$$anon$1;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Stack;

    return-object p1
.end method

.method public pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/StackProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/StackProxy<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lscala/collection/mutable/StackProxy$class;->pushAll(Lscala/collection/mutable/StackProxy;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/StackProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lscala/collection/mutable/StackProxy$$anon$1;->self()Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public self()Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lscala/collection/mutable/StackProxy$$anon$1;->$outer:Lscala/collection/mutable/StackProxy;

    invoke-interface {v0}, Lscala/collection/mutable/StackProxy;->self()Lscala/collection/mutable/Stack;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Stack;->clone()Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->toList(Lscala/collection/mutable/StackProxy;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lscala/collection/mutable/StackProxy$class;->top(Lscala/collection/mutable/StackProxy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
