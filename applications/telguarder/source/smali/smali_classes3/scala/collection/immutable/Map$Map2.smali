.class public Lscala/collection/immutable/Map$Map2;
.super Lscala/collection/immutable/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/AbstractMap<",
        "TA;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TA;TB;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map2;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map2;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map2;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    new-instance p1, Lscala/collection/immutable/Map$Map1;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Map$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 134
    :cond_4
    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_7
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_8

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_9

    new-instance p1, Lscala/collection/immutable/Map$Map1;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Map$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    move-object p1, p0

    :goto_2
    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map2;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map2;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/Map$Map2;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 3
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

    .line 137
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    new-instance p1, Lscala/Some;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_7
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_8

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_9

    new-instance p1, Lscala/Some;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 125
    :cond_9
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_2
    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 126
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Lscala/Tuple2;

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$Map2;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$Map2;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    new-instance p1, Lscala/collection/immutable/Map$Map2;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    invoke-direct {p1, v0, p2, v1, v2}, Lscala/collection/immutable/Map$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 129
    :cond_4
    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_7
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_9

    new-instance p1, Lscala/collection/immutable/Map$Map2;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Lscala/collection/immutable/Map$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 130
    :cond_9
    new-instance v0, Lscala/collection/immutable/Map$Map3;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map2;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map2;->value1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map2;->key2:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map2;->value2:Ljava/lang/Object;

    move-object v3, v0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_2
    return-object p1
.end method
