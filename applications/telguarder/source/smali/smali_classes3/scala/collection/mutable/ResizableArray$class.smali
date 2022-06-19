.class public abstract Lscala/collection/mutable/ResizableArray$class;
.super Ljava/lang/Object;
.source "ResizableArray.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ResizableArray;)V
    .locals 3

    .line 32
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->initialSize()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/mutable/ResizableArray;->array_$eq([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 33
    invoke-interface {p0, v0}, Lscala/collection/mutable/ResizableArray;->size0_$eq(I)V

    return-void
.end method

.method public static apply(Lscala/collection/mutable/ResizableArray;I)Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 44
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static companion(Lscala/collection/mutable/ResizableArray;)Lscala/collection/generic/GenericCompanion;
    .locals 0

    .line 29
    sget-object p0, Lscala/collection/mutable/ResizableArray$;->MODULE$:Lscala/collection/mutable/ResizableArray$;

    return-object p0
.end method

.method public static copy(Lscala/collection/mutable/ResizableArray;III)V
    .locals 1

    .line 120
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/mutable/ResizableArray;Ljava/lang/Object;II)V
    .locals 8

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 76
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v1, p3, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->length()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v7

    .line 77
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static ensureSize(Lscala/collection/mutable/ResizableArray;I)V
    .locals 6

    .line 95
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    const-wide/16 v4, 0x2

    :goto_0
    mul-long v0, v0, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int p1, v0

    .line 103
    new-array p1, p1, [Ljava/lang/Object;

    .line 104
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-interface {p0, p1}, Lscala/collection/mutable/ResizableArray;->array_$eq([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static foreach(Lscala/collection/mutable/ResizableArray;Lscala/Function1;)V
    .locals 3

    .line 57
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static initialSize(Lscala/collection/mutable/ResizableArray;)I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public static length(Lscala/collection/mutable/ResizableArray;)I
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result p0

    return p0
.end method

.method public static reduceToSize(Lscala/collection/mutable/ResizableArray;I)V
    .locals 4

    .line 85
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v1

    const/4 v2, 0x1

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 86
    :goto_1
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 87
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Lscala/collection/mutable/ResizableArray;->size0_$eq(I)V

    .line 88
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static swap(Lscala/collection/mutable/ResizableArray;II)V
    .locals 3

    .line 112
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    .line 113
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 114
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object p0

    aput-object v0, p0, p2

    return-void
.end method

.method public static update(Lscala/collection/mutable/ResizableArray;ILjava/lang/Object;)V
    .locals 1

    .line 48
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->size0()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    invoke-interface {p0}, Lscala/collection/mutable/ResizableArray;->array()[Ljava/lang/Object;

    move-result-object p0

    aput-object p2, p0, p1

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
