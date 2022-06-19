.class public Lscala/collection/immutable/HashMap$HashMapCollision1;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMapCollision1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashMap<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final kvs:Lscala/collection/immutable/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILscala/collection/immutable/ListMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 229
    iput p1, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash:I

    iput-object p2, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs:Lscala/collection/immutable/ListMap;

    .line 230
    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    return-void
.end method

.method private final newhm$1(Lscala/collection/immutable/ListMap;)Lscala/collection/immutable/HashMap$HashMapCollision1;
    .locals 2

    .line 282
    new-instance v0, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    return-object v0
.end method


# virtual methods
.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;I)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListMap;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lscala/collection/immutable/ListMap;

    .line 265
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->size()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    .line 271
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/ListMap;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    move-object p2, p0

    goto :goto_1

    .line 274
    :cond_1
    new-instance p2, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result p3

    invoke-direct {p2, p3, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->head()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    if-eqz p1, :cond_3

    new-instance p2, Lscala/Tuple3;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p2}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    .line 270
    new-instance p4, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result p5

    invoke-direct {p4, p3, p5, p2, p1}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    move-object p2, p4

    goto :goto_1

    .line 269
    :cond_3
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_4
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p1
.end method

.method public hash()I
    .locals 1

    .line 229
    iget v0, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash:I

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public kvs()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs:Lscala/collection/immutable/ListMap;

    return-object v0
.end method

.method public merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;I",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;-><init>(Lscala/collection/immutable/HashMap$HashMapCollision1;ILscala/collection/immutable/HashMap$Merger;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/ListMap;->foreach(Lscala/Function1;)V

    .line 289
    iget-object p1, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/collection/immutable/HashMap;

    return-object p1
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 249
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lscala/collection/immutable/ListMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->size()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->size()I

    move-result v0

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance p3, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->head()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    .line 255
    new-instance p3, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p3, v0, p2, v1, p1}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    goto :goto_1

    .line 252
    :cond_2
    sget-object p1, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p3

    goto :goto_1

    :cond_3
    :goto_0
    move-object p3, p0

    :goto_1
    return-object p3
.end method

.method public size()I
    .locals 1

    .line 233
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->size()I

    move-result v0

    return v0
.end method

.method public split()Lscala/collection/immutable/Seq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListMap;->size()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lscala/collection/immutable/ListMap;->splitAt(I)Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListMap;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/ListMap;

    .line 283
    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/immutable/HashMap$HashMapCollision1;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->newhm$1(Lscala/collection/immutable/ListMap;)Lscala/collection/immutable/HashMap$HashMapCollision1;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lscala/collection/immutable/HashMap$HashMapCollision1;->newhm$1(Lscala/collection/immutable/ListMap;)Lscala/collection/immutable/HashMap$HashMapCollision1;

    move-result-object v1

    aput-object v1, v2, v0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v3, v0}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;IITB1;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/HashMap$Merger<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-eqz p6, :cond_0

    .line 240
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lscala/collection/immutable/ListMap;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 241
    new-instance p3, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p4

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/ListMap;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p6, v0, p5}, Lscala/collection/immutable/HashMap$Merger;->apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;

    move-result-object p1

    invoke-virtual {p4, p1}, Lscala/collection/immutable/ListMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance p3, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object p5

    invoke-virtual {p5, p1, p4}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v4, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {v4, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    .line 244
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->size()I

    move-result p1

    add-int/lit8 v6, p1, 0x1

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;

    move-result-object p3

    :goto_0
    return-object p3
.end method
