.class public abstract Lscala/collection/generic/GenericTraversableTemplate$class;
.super Ljava/lang/Object;
.source "GenericTraversableTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericTraversableTemplate;)V
    .locals 0

    return-void
.end method

.method public static final fail$1(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/runtime/Nothing$;
    .locals 1

    .line 213
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "transpose requires all collections have the same size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static flatten(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 3

    .line 170
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 171
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->sequential(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/TraversableOnce;

    move-result-object v1

    new-instance v2, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1;-><init>(Lscala/collection/generic/GenericTraversableTemplate;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {v1, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 173
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/GenTraversable;

    return-object p0
.end method

.method public static genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 70
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 65
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

.method private static sequential(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/TraversableOnce;
    .locals 0

    .line 72
    check-cast p0, Lscala/collection/GenTraversableOnce;

    invoke-interface {p0}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p0

    return-object p0
.end method

.method public static transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 4

    .line 210
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/GenTraversable;

    return-object p0

    .line 215
    :cond_0
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->size()I

    move-result v0

    .line 216
    sget-object v1, Lscala/collection/IndexedSeq$;->MODULE$:Lscala/collection/IndexedSeq$;

    new-instance v2, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$1;

    invoke-direct {v2, p0}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$1;-><init>(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-virtual {v1, v0, v2}, Lscala/collection/IndexedSeq$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object v1

    check-cast v1, Lscala/collection/IndexedSeq;

    .line 217
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->sequential(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/TraversableOnce;

    move-result-object v2

    new-instance v3, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;-><init>(Lscala/collection/generic/GenericTraversableTemplate;ILscala/collection/IndexedSeq;Lscala/Function1;)V

    invoke-interface {v2, v3}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 227
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 228
    new-instance v0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$2;-><init>(Lscala/collection/generic/GenericTraversableTemplate;Lscala/collection/mutable/Builder;)V

    invoke-interface {v1, v0}, Lscala/collection/IndexedSeq;->foreach(Lscala/Function1;)V

    .line 229
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/GenTraversable;

    return-object p0
.end method

.method public static unzip(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple2;
    .locals 4

    .line 94
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 95
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 96
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->sequential(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/TraversableOnce;

    move-result-object v2

    new-instance v3, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;-><init>(Lscala/collection/generic/GenericTraversableTemplate;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {v2, v3}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 101
    new-instance p0, Lscala/Tuple2;

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;
    .locals 11

    .line 126
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v6

    .line 127
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v7

    .line 128
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v8

    .line 130
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->sequential(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/TraversableOnce;

    move-result-object v9

    new-instance v10, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip3$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip3$1;-><init>(Lscala/collection/generic/GenericTraversableTemplate;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {v9, v10}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 136
    new-instance p0, Lscala/Tuple3;

    invoke-interface {v6}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v7}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
