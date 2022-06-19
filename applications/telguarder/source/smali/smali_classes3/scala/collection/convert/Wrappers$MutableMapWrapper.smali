.class public Lscala/collection/convert/Wrappers$MutableMapWrapper;
.super Lscala/collection/convert/Wrappers$MapWrapper;
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
    name = "MutableMapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/convert/Wrappers$MapWrapper<",
        "TA;TB;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final underlying:Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 232
    iput-object p2, p0, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying:Lscala/collection/mutable/Map;

    invoke-direct {p0, p1, p2}, Lscala/collection/convert/Wrappers$MapWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Map;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 232
    instance-of p1, p1, Lscala/collection/convert/Wrappers$MutableMapWrapper;

    return p1
.end method

.method public clear()V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Map;->clear()V

    return-void
.end method

.method public copy(Lscala/collection/mutable/Map;)Lscala/collection/convert/Wrappers$MutableMapWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$MutableMapWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 232
    new-instance v0, Lscala/collection/convert/Wrappers$MutableMapWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->scala$collection$convert$Wrappers$MutableMapWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$MutableMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Map;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

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

    .line 232
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

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

    .line 232
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "MutableMapWrapper"

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TB;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 234
    instance-of p2, p1, Lscala/Some;

    if-eqz p2, :cond_0

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 233
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/mutable/Map;->remove(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 240
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    instance-of v1, p1, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 239
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$MutableMapWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 232
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MutableMapWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public underlying()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying:Lscala/collection/mutable/Map;

    return-object v0
.end method
