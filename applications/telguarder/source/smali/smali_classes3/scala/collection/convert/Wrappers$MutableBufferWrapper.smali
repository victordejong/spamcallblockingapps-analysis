.class public Lscala/collection/convert/Wrappers$MutableBufferWrapper;
.super Ljava/util/AbstractList;
.source "Wrappers.scala"

# interfaces
.implements Lscala/collection/convert/Wrappers$IterableWrapperTrait;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MutableBufferWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TA;>;",
        "Lscala/collection/convert/Wrappers$IterableWrapperTrait<",
        "TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 78
    iput-object p2, p0, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying:Lscala/collection/mutable/Buffer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->$init$(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->append(Lscala/collection/Seq;)V

    return v2
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 78
    instance-of p1, p1, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    return p1
.end method

.method public copy(Lscala/collection/mutable/Buffer;)Lscala/collection/convert/Wrappers$MutableBufferWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;)",
            "Lscala/collection/convert/Wrappers$MutableBufferWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->scala$collection$convert$Wrappers$MutableBufferWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Buffer;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 78
    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->isEmpty(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->iterator()Lscala/collection/convert/Wrappers$IteratorWrapper;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/convert/Wrappers$IteratorWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$IteratorWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->iterator(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Lscala/collection/convert/Wrappers$IteratorWrapper;

    move-result-object v0

    return-object v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "MutableBufferWrapper"

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$convert$Wrappers$IterableWrapperTrait$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->scala$collection$convert$Wrappers$MutableBufferWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$MutableBufferWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 78
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)TA;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Buffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lscala/collection/mutable/Buffer;->update(ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 78
    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->size(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Iterable;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying:Lscala/collection/mutable/Buffer;

    return-object v0
.end method
