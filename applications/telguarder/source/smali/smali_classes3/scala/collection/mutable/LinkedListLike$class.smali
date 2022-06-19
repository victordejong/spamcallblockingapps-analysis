.class public abstract Lscala/collection/mutable/LinkedListLike$class;
.super Ljava/lang/Object;
.source "LinkedListLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/LinkedListLike;)V
    .locals 0

    return-void
.end method

.method public static append(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;
    .locals 1

    .line 125
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Seq;

    invoke-static {p0, v0, p1}, Lscala/collection/mutable/LinkedListLike$class;->loop$1(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;Lscala/collection/mutable/Seq;)V

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->repr()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lscala/collection/mutable/Seq;

    :goto_0
    return-object p1
.end method

.method public static apply(Lscala/collection/mutable/LinkedListLike;I)Ljava/lang/Object;
    .locals 1

    .line 156
    new-instance v0, Lscala/collection/mutable/LinkedListLike$$anonfun$apply$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedListLike$$anonfun$apply$1;-><init>(Lscala/collection/mutable/LinkedListLike;)V

    invoke-static {p0, p1, v0}, Lscala/collection/mutable/LinkedListLike$class;->atLocation(Lscala/collection/mutable/LinkedListLike;ILscala/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static atLocation(Lscala/collection/mutable/LinkedListLike;ILscala/Function1;)Ljava/lang/Object;
    .locals 1

    .line 151
    invoke-interface {p0, p1}, Lscala/collection/mutable/LinkedListLike;->drop(I)Lscala/collection/mutable/Seq;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Lscala/collection/mutable/Seq;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clone(Lscala/collection/mutable/LinkedListLike;)Lscala/collection/mutable/Seq;
    .locals 1

    .line 188
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 189
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 190
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Seq;

    return-object p0
.end method

.method public static drop(Lscala/collection/mutable/LinkedListLike;I)Lscala/collection/mutable/Seq;
    .locals 3

    .line 142
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->repr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/Seq;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 143
    move-object v1, p0

    check-cast v1, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {v1}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-interface {v1}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static foreach(Lscala/collection/mutable/LinkedListLike;Lscala/Function1;)V
    .locals 1

    .line 177
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->elem()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/LinkedListLike;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get(Lscala/collection/mutable/LinkedListLike;I)Lscala/Option;
    .locals 0

    .line 160
    invoke-interface {p0, p1}, Lscala/collection/mutable/LinkedListLike;->drop(I)Lscala/collection/mutable/Seq;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Lscala/collection/mutable/Seq;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lscala/Some;

    check-cast p0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->elem()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p1
.end method

.method public static head(Lscala/collection/mutable/LinkedListLike;)Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->elem()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static insert(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;)V
    .locals 2

    .line 133
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {p1}, Lscala/collection/mutable/Seq;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    move-object v0, p1

    check-cast v0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/LinkedListLike;->append(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;

    .line 136
    invoke-interface {p0, p1}, Lscala/collection/mutable/LinkedListLike;->next_$eq(Lscala/collection/mutable/Seq;)V

    :cond_0
    return-void

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "requirement failed: "

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "insert into empty list"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isEmpty(Lscala/collection/mutable/LinkedListLike;)Z
    .locals 1

    .line 64
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static iterator(Lscala/collection/mutable/LinkedListLike;)Lscala/collection/Iterator;
    .locals 1

    .line 165
    new-instance v0, Lscala/collection/mutable/LinkedListLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedListLike$$anon$1;-><init>(Lscala/collection/mutable/LinkedListLike;)V

    return-object v0
.end method

.method public static length(Lscala/collection/mutable/LinkedListLike;)I
    .locals 2

    .line 69
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Seq;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lscala/collection/mutable/LinkedListLike$class;->length0(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;I)I

    move-result p0

    return p0
.end method

.method private static length0(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;I)I
    .locals 0

    .line 72
    :goto_0
    check-cast p1, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p1}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private static final loop$1(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;Lscala/collection/mutable/Seq;)V
    .locals 0

    .line 122
    :goto_0
    check-cast p1, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p1}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Lscala/collection/mutable/LinkedListLike;->next_$eq(Lscala/collection/mutable/Seq;)V

    sget-object p0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 123
    :cond_0
    invoke-interface {p1}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p1

    goto :goto_0
.end method

.method public static tail(Lscala/collection/mutable/LinkedListLike;)Lscala/collection/mutable/Seq;
    .locals 2

    .line 79
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p0}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "requirement failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "tail of empty list"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static update(Lscala/collection/mutable/LinkedListLike;ILjava/lang/Object;)V
    .locals 1

    .line 157
    new-instance v0, Lscala/collection/mutable/LinkedListLike$$anonfun$update$1;

    invoke-direct {v0, p0, p2}, Lscala/collection/mutable/LinkedListLike$$anonfun$update$1;-><init>(Lscala/collection/mutable/LinkedListLike;Ljava/lang/Object;)V

    invoke-static {p0, p1, v0}, Lscala/collection/mutable/LinkedListLike$class;->atLocation(Lscala/collection/mutable/LinkedListLike;ILscala/Function1;)Ljava/lang/Object;

    return-void
.end method
