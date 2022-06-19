.class public Lscala/collection/immutable/HashMap$HashMap1;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMap1"
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

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private kv:Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;ITB;",
            "Lscala/Tuple2<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lscala/collection/immutable/HashMap$HashMap1;->key:Ljava/lang/Object;

    iput p2, p0, Lscala/collection/immutable/HashMap$HashMap1;->hash:I

    iput-object p3, p0, Lscala/collection/immutable/HashMap$HashMap1;->value:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/HashMap$HashMap1;->kv:Lscala/Tuple2;

    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public computeHashFor(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap$HashMap1;->computeHash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public ensurePair()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashMap$HashMap1;->kv_$eq(Lscala/Tuple2;)V

    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

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

    .line 218
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object p3

    invoke-interface {p1, p3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    .line 221
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 192
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of p3, p1, Ljava/lang/Character;

    if-eqz p3, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    new-instance p1, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_1
    return-object p1
.end method

.method public getHash()I
    .locals 1

    .line 188
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hash()I
    .locals 1

    .line 184
    iget v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->hash:I

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 220
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public kv()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->kv:Lscala/Tuple2;

    return-object v0
.end method

.method public kv_$eq(Lscala/Tuple2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lscala/collection/immutable/HashMap$HashMap1;->kv:Lscala/Tuple2;

    return-void
.end method

.method public merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 7
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

    .line 225
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v5

    invoke-virtual {p3}, Lscala/collection/immutable/HashMap$Merger;->invert()Lscala/collection/immutable/HashMap$Merger;

    move-result-object v6

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of p3, p1, Ljava/lang/Character;

    if-eqz p3, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    sget-object p1, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
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

    .line 195
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    if-nez p6, :cond_5

    .line 197
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p4, :cond_4

    move-object p3, p0

    goto :goto_1

    .line 198
    :cond_4
    new-instance p3, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {p3, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    goto :goto_1

    .line 200
    :cond_5
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object p1

    invoke-virtual {p6, p1, p5}, Lscala/collection/immutable/HashMap$Merger;->apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;

    move-result-object p1

    .line 201
    new-instance p3, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p5

    invoke-direct {p3, p4, p2, p5, p1}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result p6

    if-eq p2, p6, :cond_7

    .line 206
    new-instance v4, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {v4, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    .line 207
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v1

    const/4 v6, 0x2

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;

    move-result-object p3

    goto :goto_1

    .line 210
    :cond_7
    new-instance p3, Lscala/collection/immutable/HashMap$HashMapCollision1;

    sget-object p5, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    invoke-virtual {p5}, Lscala/collection/immutable/ListMap$;->empty()Lscala/collection/immutable/ListMap;

    move-result-object p5

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, p6, v0}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p5

    invoke-virtual {p5, p1, p4}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    :goto_1
    return-object p3
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->value:Ljava/lang/Object;

    return-object v0
.end method
