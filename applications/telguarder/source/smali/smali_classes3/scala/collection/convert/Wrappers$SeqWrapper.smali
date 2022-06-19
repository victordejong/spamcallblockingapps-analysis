.class public Lscala/collection/convert/Wrappers$SeqWrapper;
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
    name = "SeqWrapper"
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

.field private final underlying:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation

    .line 65
    iput-object p2, p0, Lscala/collection/convert/Wrappers$SeqWrapper;->underlying:Lscala/collection/Seq;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$SeqWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->$init$(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 65
    instance-of p1, p1, Lscala/collection/convert/Wrappers$SeqWrapper;

    return p1
.end method

.method public copy(Lscala/collection/Seq;)Lscala/collection/convert/Wrappers$SeqWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/convert/Wrappers$SeqWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lscala/collection/convert/Wrappers$SeqWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->scala$collection$convert$Wrappers$SeqWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$SeqWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->underlying()Lscala/collection/Seq;

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

    .line 66
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 65
    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->isEmpty(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->iterator()Lscala/collection/convert/Wrappers$IteratorWrapper;

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

    .line 65
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

    .line 65
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->underlying()Lscala/collection/Seq;

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

    .line 65
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "SeqWrapper"

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$IterableWrapperTrait$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->scala$collection$convert$Wrappers$SeqWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$SeqWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 65
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SeqWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 65
    invoke-static {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;->size(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Iterable;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$SeqWrapper;->underlying()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lscala/collection/convert/Wrappers$SeqWrapper;->underlying:Lscala/collection/Seq;

    return-object v0
.end method
