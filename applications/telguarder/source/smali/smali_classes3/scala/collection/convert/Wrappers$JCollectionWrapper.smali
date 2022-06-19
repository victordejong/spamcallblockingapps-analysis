.class public Lscala/collection/convert/Wrappers$JCollectionWrapper;
.super Lscala/collection/AbstractIterable;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JCollectionWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable<",
        "TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Ljava/util/Collection<",
            "TA;>;)V"
        }
    .end annotation

    .line 58
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JCollectionWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public copy(Ljava/util/Collection;)Lscala/collection/convert/Wrappers$JCollectionWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TA;>;)",
            "Lscala/collection/convert/Wrappers$JCollectionWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->scala$collection$convert$Wrappers$JCollectionWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JCollectionWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Collection;)V

    return-object v0
.end method

.method public copy$default$1()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection<",
            "TA;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_4

    .line 58
    instance-of v2, p1, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    invoke-virtual {v2}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->scala$collection$convert$Wrappers$JCollectionWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->scala$collection$convert$Wrappers$JCollectionWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    check-cast p1, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1, p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->asScalaIterator(Ljava/util/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TB;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

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

    .line 58
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

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

    .line 58
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "JCollectionWrapper"

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JCollectionWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 58
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JCollectionWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public underlying()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TA;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying:Ljava/util/Collection;

    return-object v0
.end method
