.class public final Lscala/collection/mutable/QueueProxy$$anon$1;
.super Lscala/collection/mutable/Queue;
.source "QueueProxy.scala"

# interfaces
.implements Lscala/collection/mutable/QueueProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/QueueProxy;->clone()Lscala/collection/mutable/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/Queue<",
        "TA;>;",
        "Lscala/collection/mutable/QueueProxy<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/QueueProxy;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/QueueProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/QueueProxy<",
            "TA;>;)V"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/QueueProxy$$anon$1;->$outer:Lscala/collection/mutable/QueueProxy;

    invoke-direct {p0}, Lscala/collection/mutable/Queue;-><init>()V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->$init$(Lscala/collection/mutable/QueueProxy;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lscala/collection/mutable/QueueProxy$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/generic/Growable;

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lscala/collection/mutable/QueueProxy$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Builder;

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lscala/collection/mutable/QueueProxy$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/MutableList;

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/QueueProxy<",
            "TA;>;"
        }
    .end annotation

    .line 96
    invoke-static {p0, p1}, Lscala/collection/mutable/QueueProxy$class;->$plus$eq(Lscala/collection/mutable/QueueProxy;Ljava/lang/Object;)Lscala/collection/mutable/QueueProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lscala/collection/mutable/QueueProxy$$anon$1;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/QueueProxy;

    move-result-object p1

    check-cast p1, Lscala/collection/generic/Growable;

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/QueueProxy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/QueueProxy<",
            "TA;>;"
        }
    .end annotation

    .line 96
    invoke-static {p0, p1}, Lscala/collection/mutable/QueueProxy$class;->$plus$plus$eq(Lscala/collection/mutable/QueueProxy;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/QueueProxy;

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

    .line 96
    invoke-static {p0, p1}, Lscala/collection/mutable/QueueProxy$class;->apply(Lscala/collection/mutable/QueueProxy;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/QueueProxy$$anon$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->clear(Lscala/collection/mutable/QueueProxy;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lscala/collection/mutable/QueueProxy$$anon$1;->clone()Lscala/collection/mutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/MutableList;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lscala/collection/mutable/QueueProxy$$anon$1;->clone()Lscala/collection/mutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->clone(Lscala/collection/mutable/QueueProxy;)Lscala/collection/mutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public dequeue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->dequeue(Lscala/collection/mutable/QueueProxy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation

    .line 96
    invoke-static {p0, p1}, Lscala/collection/mutable/QueueProxy$class;->enqueue(Lscala/collection/mutable/QueueProxy;Lscala/collection/Seq;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 96
    invoke-static {p0, p1}, Lscala/Proxy$class;->equals(Lscala/Proxy;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public front()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->front(Lscala/collection/mutable/QueueProxy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->isEmpty(Lscala/collection/mutable/QueueProxy;)Z

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

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->iterator(Lscala/collection/mutable/QueueProxy;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 96
    invoke-static {p0}, Lscala/collection/mutable/QueueProxy$class;->length(Lscala/collection/mutable/QueueProxy;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lscala/collection/mutable/QueueProxy$$anon$1;->self()Lscala/collection/mutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public self()Lscala/collection/mutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lscala/collection/mutable/QueueProxy$$anon$1;->$outer:Lscala/collection/mutable/QueueProxy;

    invoke-interface {v0}, Lscala/collection/mutable/QueueProxy;->self()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->clone()Lscala/collection/mutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
