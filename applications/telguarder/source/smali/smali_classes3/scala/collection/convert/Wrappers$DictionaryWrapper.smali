.class public Lscala/collection/convert/Wrappers$DictionaryWrapper;
.super Ljava/util/Dictionary;
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
    name = "DictionaryWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary<",
        "TA;TB;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

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

    .line 353
    iput-object p2, p0, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying:Lscala/collection/mutable/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$DictionaryWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 353
    instance-of p1, p1, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    return p1
.end method

.method public copy(Lscala/collection/mutable/Map;)Lscala/collection/convert/Wrappers$DictionaryWrapper;
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
            "Lscala/collection/convert/Wrappers$DictionaryWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 353
    new-instance v0, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->scala$collection$convert$Wrappers$DictionaryWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$DictionaryWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Map;)V

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

    .line 353
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TB;>;"
        }
    .end annotation

    .line 357
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/Map;->valuesIterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->asJavaEnumeration(Lscala/collection/Iterator;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_4

    .line 353
    instance-of v2, p1, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    invoke-virtual {v2}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->scala$collection$convert$Wrappers$DictionaryWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->scala$collection$convert$Wrappers$DictionaryWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    check-cast p1, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1, p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->canEqual(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/mutable/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 360
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    instance-of v1, p1, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 359
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

.method public hashCode()I
    .locals 1

    .line 353
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 355
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TA;>;"
        }
    .end annotation

    .line 356
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/Map;->keysIterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->asJavaEnumeration(Lscala/collection/Iterator;)Ljava/util/Enumeration;

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

    .line 353
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

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

    .line 353
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "DictionaryWrapper"

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TB;"
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 367
    instance-of p2, p1, Lscala/Some;

    if-eqz p2, :cond_0

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 368
    :cond_0
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 366
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

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/mutable/Map;->remove(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 372
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    instance-of v1, p1, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 371
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

.method public synthetic scala$collection$convert$Wrappers$DictionaryWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 353
    iget-object v0, p0, Lscala/collection/convert/Wrappers$DictionaryWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 354
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 353
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

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

    .line 353
    iget-object v0, p0, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying:Lscala/collection/mutable/Map;

    return-object v0
.end method
