.class public Lscala/collection/immutable/ListMap$Node;
.super Lscala/collection/immutable/ListMap;
.source "ListMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/ListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B1:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/ListMap<",
        "TA;TB1;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x598ddcca9e54010eL


# instance fields
.field public final synthetic $outer:Lscala/collection/immutable/ListMap;

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;TA;TB1;)V"
        }
    .end annotation

    .line 136
    iput-object p2, p0, Lscala/collection/immutable/ListMap$Node;->key:Ljava/lang/Object;

    .line 137
    iput-object p3, p0, Lscala/collection/immutable/ListMap$Node;->value:Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/ListMap$Node;->$outer:Lscala/collection/immutable/ListMap;

    .line 137
    invoke-direct {p0}, Lscala/collection/immutable/ListMap;-><init>()V

    return-void
.end method

.method private apply0(Lscala/collection/immutable/ListMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;TA;)TB1;"
        }
    .end annotation

    .line 164
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 166
    :cond_4
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "key not found: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private get0(Lscala/collection/immutable/ListMap;Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;TA;)",
            "Lscala/Option<",
            "TB1;>;"
        }
    .end annotation

    .line 177
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    new-instance p2, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_2
    return-object p2
.end method

.method private remove0(Ljava/lang/Object;Lscala/collection/immutable/ListMap;Lscala/collection/immutable/List;)Lscala/collection/immutable/ListMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/List<",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;>;)",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 196
    :goto_0
    invoke-virtual {p2}, Lscala/collection/immutable/ListMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p3}, Lscala/collection/immutable/List;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListMap;

    goto :goto_2

    .line 198
    :cond_0
    invoke-virtual {p2}, Lscala/collection/immutable/ListMap;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {p2}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/ListMap$Node$$anonfun$remove0$1;

    invoke-direct {p2, p0}, Lscala/collection/immutable/ListMap$Node$$anonfun$remove0$1;-><init>(Lscala/collection/immutable/ListMap$Node;)V

    invoke-virtual {p3, p1, p2}, Lscala/collection/immutable/List;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListMap;

    :goto_2
    return-object p1

    .line 203
    :cond_5
    invoke-virtual {p2}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {p3, p2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p3

    move-object p2, v0

    goto :goto_0
.end method

.method private size0(Lscala/collection/immutable/ListMap;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;I)I"
        }
    .end annotation

    .line 145
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 193
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, p1, p0, v0}, Lscala/collection/immutable/ListMap$Node;->remove0(Ljava/lang/Object;Lscala/collection/immutable/ListMap;Lscala/collection/immutable/List;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB1;"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p0, p1}, Lscala/collection/immutable/ListMap$Node;->apply0(Lscala/collection/immutable/ListMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB1;>;"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p0, p1}, Lscala/collection/immutable/ListMap$Node;->get0(Lscala/collection/immutable/ListMap;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lscala/collection/immutable/ListMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$Node;->scala$collection$immutable$ListMap$Node$$$outer()Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$immutable$ListMap$Node$$$outer()Lscala/collection/immutable/ListMap;
    .locals 1

    .line 136
    iget-object v0, p0, Lscala/collection/immutable/ListMap$Node;->$outer:Lscala/collection/immutable/ListMap;

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p0, v0}, Lscala/collection/immutable/ListMap$Node;->size0(Lscala/collection/immutable/ListMap;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListMap$Node;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListMap$Node;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B2:",
            "Ljava/lang/Object;",
            ">(TA;TB2;)",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB2;>;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v0

    .line 186
    new-instance v1, Lscala/collection/immutable/ListMap$Node;

    invoke-direct {v1, v0, p1, p2}, Lscala/collection/immutable/ListMap$Node;-><init>(Lscala/collection/immutable/ListMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0

    .line 136
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListMap$Node;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB1;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lscala/collection/immutable/ListMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method
