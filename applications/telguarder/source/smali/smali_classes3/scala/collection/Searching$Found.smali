.class public Lscala/collection/Searching$Found;
.super Lscala/collection/Searching$SearchResult;
.source "Searching.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/Searching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Found"
.end annotation


# instance fields
.field private final foundIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    iput p1, p0, Lscala/collection/Searching$Found;->foundIndex:I

    invoke-direct {p0}, Lscala/collection/Searching$SearchResult;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    instance-of p1, p1, Lscala/collection/Searching$Found;

    return p1
.end method

.method public copy(I)Lscala/collection/Searching$Found;
    .locals 1

    .line 32
    new-instance v0, Lscala/collection/Searching$Found;

    invoke-direct {v0, p1}, Lscala/collection/Searching$Found;-><init>(I)V

    return-object v0
.end method

.method public copy$default$1()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lscala/collection/Searching$Found;->foundIndex()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    .line 32
    instance-of v2, p1, Lscala/collection/Searching$Found;

    if-eqz v2, :cond_2

    check-cast p1, Lscala/collection/Searching$Found;

    invoke-virtual {p0}, Lscala/collection/Searching$Found;->foundIndex()I

    move-result v2

    invoke-virtual {p1}, Lscala/collection/Searching$Found;->foundIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, p0}, Lscala/collection/Searching$Found;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public foundIndex()I
    .locals 1

    .line 32
    iget v0, p0, Lscala/collection/Searching$Found;->foundIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Lscala/collection/Searching$Found;->foundIndex()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    invoke-static {v1, v0}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->finalizeHash(II)I

    move-result v0

    return v0
.end method

.method public insertionPoint()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/Searching$Found;->foundIndex()I

    move-result v0

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lscala/collection/Searching$Found;->foundIndex()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

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

    .line 32
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Found"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
