.class public Lscala/collection/convert/Wrappers$MutableSetWrapper;
.super Lscala/collection/convert/Wrappers$SetWrapper;
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
    name = "MutableSetWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/convert/Wrappers$SetWrapper<",
        "TA;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final underlying:Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/mutable/Set<",
            "TA;>;)V"
        }
    .end annotation

    .line 134
    iput-object p2, p0, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying:Lscala/collection/mutable/Set;

    invoke-direct {p0, p1, p2}, Lscala/collection/convert/Wrappers$SetWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Set;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Set;->size()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/mutable/Set;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    .line 138
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/Set;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 134
    instance-of p1, p1, Lscala/collection/convert/Wrappers$MutableSetWrapper;

    return p1
.end method

.method public clear()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Set;->clear()V

    return-void
.end method

.method public copy(Lscala/collection/mutable/Set;)Lscala/collection/convert/Wrappers$MutableSetWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Set<",
            "TA;>;)",
            "Lscala/collection/convert/Wrappers$MutableSetWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lscala/collection/convert/Wrappers$MutableSetWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->scala$collection$convert$Wrappers$MutableSetWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$MutableSetWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Set;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/mutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

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

    .line 134
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

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

    .line 134
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "MutableSetWrapper"

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Set;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic scala$collection$convert$Wrappers$MutableSetWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 134
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MutableSetWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public underlying()Lscala/collection/mutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying:Lscala/collection/mutable/Set;

    return-object v0
.end method
