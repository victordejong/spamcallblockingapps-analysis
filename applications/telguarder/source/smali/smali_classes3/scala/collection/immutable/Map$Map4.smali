.class public Lscala/collection/immutable/Map$Map4;
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
    name = "Map4"
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

.field private final key3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final key4:Ljava/lang/Object;
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

.field private final value3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final value4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TA;TB;TA;TB;TA;TB;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iput-object p5, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iput-object p6, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    iput-object p7, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iput-object p8, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map4;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map4;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map4;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

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

    new-instance p1, Lscala/collection/immutable/Map$Map3;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 183
    :cond_4
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_9

    new-instance p1, Lscala/collection/immutable/Map$Map3;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 184
    :cond_9
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    if-nez p1, :cond_b

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_c

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_c
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_d

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_e

    new-instance p1, Lscala/collection/immutable/Map$Map3;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 185
    :cond_e
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_3

    :cond_f
    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_11

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_11
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_13

    new-instance p1, Lscala/collection/immutable/Map$Map3;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_13
    move-object p1, p0

    :goto_4
    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map4;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map4;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

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

    .line 180
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/Map$Map4;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

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

    .line 188
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

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

    .line 168
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

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

    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 169
    :cond_4
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_9

    new-instance p1, Lscala/Some;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 170
    :cond_9
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    if-nez p1, :cond_b

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_c

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_c
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_d

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_e

    new-instance p1, Lscala/Some;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    .line 171
    :cond_e
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_3

    :cond_f
    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_11

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_11
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_13

    new-instance p1, Lscala/Some;

    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    .line 172
    :cond_13
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_4
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

    .line 173
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x4

    new-array v2, v2, [Lscala/Tuple2;

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

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

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 165
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$Map4;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 165
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$Map4;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

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

    new-instance p1, Lscala/collection/immutable/Map$Map4;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    iget-object v10, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v11, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v11}, Lscala/collection/immutable/Map$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 176
    :cond_4
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_9

    new-instance p1, Lscala/collection/immutable/Map$Map4;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    iget-object v10, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v11, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v11}, Lscala/collection/immutable/Map$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 177
    :cond_9
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    if-nez p1, :cond_b

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_c

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_c
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_d

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_e

    new-instance p1, Lscala/collection/immutable/Map$Map4;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v10, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v11, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v11}, Lscala/collection/immutable/Map$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 178
    :cond_e
    iget-object v0, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    if-nez p1, :cond_10

    const/4 v0, 0x0

    goto :goto_3

    :cond_10
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_11

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_11
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_12

    move-object v3, p1

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_13

    new-instance p1, Lscala/collection/immutable/Map$Map4;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    iget-object v10, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    move-object v3, p1

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lscala/collection/immutable/Map$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 179
    :cond_13
    new-instance v0, Lscala/collection/immutable/HashMap;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap;-><init>()V

    new-instance v3, Lscala/Tuple2;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map4;->key1:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->value1:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lscala/Tuple2;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map4;->key2:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map4;->value2:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v6, 0x3

    new-array v6, v6, [Lscala/Tuple2;

    new-instance v7, Lscala/Tuple2;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->key3:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/immutable/Map$Map4;->value3:Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v1

    new-instance v1, Lscala/Tuple2;

    iget-object v7, p0, Lscala/collection/immutable/Map$Map4;->key4:Ljava/lang/Object;

    iget-object v8, p0, Lscala/collection/immutable/Map$Map4;->value4:Ljava/lang/Object;

    invoke-direct {v1, v7, v8}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v2

    const/4 v1, 0x2

    new-instance v2, Lscala/Tuple2;

    invoke-direct {v2, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v1

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, v3, v4, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    :goto_4
    return-object p1
.end method
