.class public final Lscala/collection/immutable/RedBlackTree$;
.super Ljava/lang/Object;
.source "RedBlackTree.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/RedBlackTree$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/RedBlackTree$;

    invoke-direct {v0}, Lscala/collection/immutable/RedBlackTree$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    return-void
.end method

.method private _foreach(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    .line 100
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lscala/collection/immutable/RedBlackTree$;->_foreach(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V

    .line 101
    :cond_0
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private _foreachKey(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;*>;",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 108
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lscala/collection/immutable/RedBlackTree$;->_foreachKey(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private final append$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    move-object p1, p2

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/RedBlackTree$;->append$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    sget-object v1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v6, v3, v4, p1, v5}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object p1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    new-instance v4, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v4, p1, v3, v0, p2}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, v1, v2, v6, v4}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_1

    .line 227
    :cond_2
    sget-object v1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    sget-object v3, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    new-instance v5, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v5, v3, v4, v0, p2}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, v1, v2, p1, v5}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/RedBlackTree$;->append$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    .line 231
    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    sget-object v1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v6, v3, v4, p1, v5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object p1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    new-instance v4, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v4, p1, v3, v0, p2}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, v1, v2, v6, v4}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    sget-object v3, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    new-instance v5, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v5, v3, v4, v0, p2}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    invoke-direct {p0, v1, v2, p1, v5}, Lscala/collection/immutable/RedBlackTree$;->balLeft$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_1

    .line 236
    :cond_5
    invoke-direct {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lscala/collection/immutable/RedBlackTree$;->append$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    new-instance v2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v2, v0, v1, p1, p2}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object p1, v2

    goto :goto_1

    .line 238
    :cond_6
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->append$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, v0, v1, v2, p1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_0

    :goto_1
    return-object p1

    .line 241
    :cond_7
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "unmatched tree on append: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private final balLeft$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 4

    .line 198
    invoke-direct {p0, p3}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->red()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->balance$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v3, p1, p2, p3, v2}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->subl$1(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->balance$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, v0, v1, v3, p1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object v0, p2

    :goto_0
    return-object v0

    .line 205
    :cond_2
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string p2, "Defect: invariance violation"

    invoke-virtual {p1, p2}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private final balRight$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 6

    .line 207
    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0, p3}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->red()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->balance$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0, p3}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-direct {p0, v4}, Lscala/collection/immutable/RedBlackTree$;->subl$1(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lscala/collection/immutable/RedBlackTree$;->balance$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    sget-object v3, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    new-instance v3, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v3, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, v0, v1, v2, v3}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object v0, p1

    :goto_0
    return-object v0

    .line 214
    :cond_2
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string p2, "Defect: invariance violation"

    invoke-virtual {p1, p2}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private final balance$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 7

    .line 173
    invoke-direct {p0, p3}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_1

    .line 176
    :cond_0
    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    sget-object v3, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    new-instance v3, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v3, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, v0, v1, v2, v3}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    :goto_0
    move-object v0, p1

    goto/16 :goto_1

    .line 178
    :cond_1
    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v6, v2, v3, v4, v5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object v2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    new-instance v2, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, v0, v1, v6, v2}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 181
    :cond_2
    sget-object v0, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    new-instance v0, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_1

    .line 183
    :cond_3
    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v3, p1, p2, p3, v2}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, v0, v1, v3, p1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object v0, p2

    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v3, p1, p2, p3, v2}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object p1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    new-instance v2, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v2, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, v0, v1, v3, v2}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_0

    .line 189
    :cond_5
    sget-object v0, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    new-instance v0, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_1

    .line 192
    :cond_6
    sget-object v0, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    new-instance v0, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    :goto_1
    return-object v0
.end method

.method private blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->black()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private compareDepth(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/Tuple4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/Tuple4<",
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 364
    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/RedBlackTree$;->unzipBoth$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$NList;Lscala/collection/immutable/RedBlackTree$NList;I)Lscala/Tuple4;

    move-result-object p1

    return-object p1
.end method

.method private del(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->delLeft$1(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 246
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->delRight$1(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lscala/collection/immutable/RedBlackTree$;->append$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final delLeft$1(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 3

    .line 216
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->del(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, v0, v1, p2, p1}, Lscala/collection/immutable/RedBlackTree$;->balLeft$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->del(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    new-instance p3, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p3, v0, v1, p2, p1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method private final delRight$1(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 3

    .line 217
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->del(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lscala/collection/immutable/RedBlackTree$;->balRight$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->del(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, v0, v1, v2, p1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private doDrop(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;I)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-gtz p2, :cond_0

    return-object p1

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    if-lt p2, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 289
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    if-le p2, v0, :cond_2

    .line 290
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->doDrop(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 291
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lscala/collection/immutable/RedBlackTree$;->doDrop(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    .line 292
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 293
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    sub-int/2addr p2, v0

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lscala/collection/immutable/RedBlackTree$;->updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_4
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doFrom(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 252
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doFrom(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doFrom(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    .line 254
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 255
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doRange(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0, p2}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->doRange(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 277
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, p3, v0}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->doRange(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 278
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lscala/collection/immutable/RedBlackTree$;->doFrom(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    .line 279
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-direct {p0, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->doUntil(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    .line 280
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    if-ne v2, p2, :cond_3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    if-ne v4, p2, :cond_3

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 281
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    .line 282
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_5
    invoke-direct {p0, p1, v2, v4}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doSlice(Lscala/collection/immutable/RedBlackTree$Tree;II)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;II)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 309
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doSlice(Lscala/collection/immutable/RedBlackTree$Tree;II)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    :cond_1
    if-gt p3, v0, :cond_2

    .line 310
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doSlice(Lscala/collection/immutable/RedBlackTree$Tree;II)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 311
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lscala/collection/immutable/RedBlackTree$;->doDrop(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    .line 312
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    sub-int v2, p3, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lscala/collection/immutable/RedBlackTree$;->doTake(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    .line 313
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    if-ne v3, v1, :cond_3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    if-ne v5, v1, :cond_3

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    sub-int/2addr p2, v0

    add-int/lit8 v6, p2, -0x1

    .line 314
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lscala/collection/immutable/RedBlackTree$;->updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    .line 315
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lscala/collection/immutable/RedBlackTree$;->updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 316
    :cond_5
    invoke-direct {p0, p1, v3, v5}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doTake(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;I)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    if-lt p2, v0, :cond_1

    return-object p1

    .line 299
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 300
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->doTake(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 301
    :cond_2
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Lscala/collection/immutable/RedBlackTree$;->doTake(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 303
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lscala/collection/immutable/RedBlackTree$;->updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doTo(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 260
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doTo(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 261
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doTo(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    .line 262
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 263
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private doUntil(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 268
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doUntil(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doUntil(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    .line 270
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 271
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lscala/collection/immutable/RedBlackTree$;->rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final findDepth$1(Lscala/collection/immutable/RedBlackTree$NList;I)Lscala/collection/immutable/RedBlackTree$NList;
    .locals 1

    :goto_0
    if-eqz p1, :cond_2

    .line 373
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$NList;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/RedBlackTree$Tree;

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-object p1

    .line 374
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$NList;->tail()Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$NList;->tail()Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p1

    goto :goto_0

    .line 372
    :cond_2
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string p2, "Defect: unexpected empty zipper while computing range"

    invoke-virtual {p1, p2}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "**>;)Z"
        }
    .end annotation

    .line 127
    instance-of p1, p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    return p1
.end method

.method private mkTree(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(ZTA;TB;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 133
    sget-object p1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    new-instance p1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {p1, p2, p3, p4, p5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    new-instance p1, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p1, p2, p3, p4, p5}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    :goto_0
    return-object p1
.end method

.method private rebalance(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    .line 382
    invoke-direct {p0, p3}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    .line 383
    invoke-direct {p0, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->compareDepth(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/Tuple4;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lscala/Tuple4;

    invoke-virtual {v0}, Lscala/Tuple4;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple4;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lscala/Tuple4;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lscala/Tuple4;->_4()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple4;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/RedBlackTree$NList;

    invoke-virtual {v1}, Lscala/Tuple4;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1}, Lscala/Tuple4;->_3()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1}, Lscala/Tuple4;->_4()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    if-eqz v2, :cond_0

    .line 386
    sget-object v0, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v1, v0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_1

    .line 388
    :cond_0
    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/RedBlackTree$;->findDepth$1(Lscala/collection/immutable/RedBlackTree$NList;I)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object v0

    if-eqz v3, :cond_1

    .line 390
    sget-object p3, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$NList;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/RedBlackTree$Tree;

    new-instance v2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v2, p3, p1, p2, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 392
    :cond_1
    sget-object p2, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$NList;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/RedBlackTree$Tree;

    new-instance v2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v2, p2, p1, v1, p3}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    .line 394
    :goto_0
    sget-object p1, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$NList;->tail()Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p2

    new-instance p3, Lscala/collection/immutable/RedBlackTree$$anonfun$1;

    invoke-direct {p3, v3}, Lscala/collection/immutable/RedBlackTree$$anonfun$1;-><init>(Z)V

    invoke-virtual {p1, p2, v2, p3}, Lscala/collection/immutable/RedBlackTree$NList$;->foldLeft(Lscala/collection/immutable/RedBlackTree$NList;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lscala/collection/immutable/RedBlackTree$Tree;

    :goto_1
    return-object v1

    .line 383
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private final subl$1(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 3

    .line 195
    instance-of v0, p1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->red()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Defect: invariance violation; expected black, got "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private final unzip$1(Lscala/collection/immutable/RedBlackTree$NList;Z)Lscala/collection/immutable/RedBlackTree$NList;
    .locals 2

    .line 332
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$NList;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/RedBlackTree$Tree;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    return-object p1

    .line 334
    :cond_1
    sget-object v1, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {v1, v0, p1}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p1

    goto :goto_0
.end method

.method private final unzipBoth$1(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$NList;Lscala/collection/immutable/RedBlackTree$NList;I)Lscala/Tuple4;
    .locals 3

    .line 344
    :goto_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {v2, p1, p3}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p3

    sget-object p1, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {p1, p2, p4}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p4

    add-int/lit8 p5, p5, 0x1

    :goto_1
    move-object p1, v0

    move-object p2, v1

    goto :goto_0

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {v2, p1, p3}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p3

    sget-object p1, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {p1, p2, p4}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p4

    goto :goto_1

    .line 348
    :cond_1
    invoke-direct {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {v1, p2, p4}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p4

    move-object p2, v0

    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {v1, p1, p3}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p3

    move-object p1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 353
    new-instance p1, Lscala/Tuple4;

    const/4 p2, 0x0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 354
    invoke-virtual {p0, p2}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 355
    new-instance p1, Lscala/Tuple4;

    sget-object p3, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {p3, p2, p4}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lscala/collection/immutable/RedBlackTree$;->unzip$1(Lscala/collection/immutable/RedBlackTree$NList;Z)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 357
    :cond_5
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez p2, :cond_6

    .line 358
    new-instance p2, Lscala/Tuple4;

    sget-object p4, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-virtual {p4, p1, p3}, Lscala/collection/immutable/RedBlackTree$NList$;->cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lscala/collection/immutable/RedBlackTree$;->unzip$1(Lscala/collection/immutable/RedBlackTree$NList;Z)Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p2, p1, p3, p4, p5}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, p2

    :goto_2
    return-object p1

    .line 361
    :cond_6
    sget-object p3, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    new-instance p4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string p5, "unmatched trees in unzip: "

    invoke-virtual {p4, p5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string p4, ", "

    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;TB1;Z",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 152
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto/16 :goto_1

    .line 154
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, p2, v0}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v6

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    move-object v1, p0

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$balanceLeft(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    if-lez v0, :cond_2

    .line 156
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v6

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v9

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    move-object v1, p0

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$balanceRight(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez p4, :cond_7

    .line 157
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    move-object v0, p1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/RedBlackTree$;->mkTree(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;ITA;TB1;Z)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;"
        }
    .end annotation

    move v2, p2

    if-nez p1, :cond_0

    .line 161
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree;

    const/4 v1, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct {v0, v5, v6, v1, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    move-object v8, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 163
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    move-object v8, p0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v2, v0, :cond_1

    .line 164
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v7

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/RedBlackTree$;->updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v5

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v6

    move-object v1, p0

    move v2, v7

    move-object v3, v9

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$balanceLeft(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-le v2, v0, :cond_2

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v9

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v12

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    sub-int v4, v2, v0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lscala/collection/immutable/RedBlackTree$;->updNth(Lscala/collection/immutable/RedBlackTree$Tree;ILjava/lang/Object;Ljava/lang/Object;Z)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v6

    move-object v1, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$balanceRight(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 166
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v7

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lscala/collection/immutable/RedBlackTree$;->mkTree(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public contains(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;*>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)Z"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->lookup(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public count(Lscala/collection/immutable/RedBlackTree$Tree;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "**>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->count()I

    move-result p1

    :goto_0
    return p1
.end method

.method public countInRange(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;*>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)I"
        }
    .end annotation

    :goto_0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 53
    :cond_0
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->count()I

    move-result p1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/Some;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v2, v1}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/Some;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lscala/math/Ordering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p0, v0, p2, v1, p4}, Lscala/collection/immutable/RedBlackTree$;->countInRange(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p0, p1, v0, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->countInRange(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)I

    move-result p1

    add-int/2addr p2, p1

    move p1, p2

    :goto_1
    return p1
.end method

.method public delete(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->del(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public drop(Lscala/collection/immutable/RedBlackTree$Tree;ILscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;I",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->doDrop(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->_foreach(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V

    :cond_0
    return-void
.end method

.method public foreachKey(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;*>;",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->_foreachKey(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Function1;)V

    :cond_0
    return-void
.end method

.method public from(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doFrom(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public get(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->lookup(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 35
    :cond_0
    new-instance p2, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public greatest(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 92
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1

    .line 90
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "empty map"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBlack(Lscala/collection/immutable/RedBlackTree$Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEmpty(Lscala/collection/immutable/RedBlackTree$Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "**>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lscala/collection/immutable/RedBlackTree$EntriesIterator;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$EntriesIterator;-><init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public iterator$default$2()Lscala/None$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/None$;"
        }
    .end annotation

    .line 113
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method

.method public keysIterator(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;*>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lscala/collection/immutable/RedBlackTree$KeysIterator;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$KeysIterator;-><init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public keysIterator$default$2()Lscala/None$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/None$;"
        }
    .end annotation

    .line 114
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method

.method public lookup(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    :goto_0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public nth(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;I)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 119
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public range(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->doRange(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lscala/Some;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Some;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lscala/Some;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lscala/Some;

    invoke-virtual {p2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$;->range(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lscala/Some;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Some;

    sget-object p3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lscala/collection/immutable/RedBlackTree$;->from(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_1
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lscala/Some;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Some;

    invoke-virtual {p2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lscala/collection/immutable/RedBlackTree$;->until(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_2
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    return-object p1

    .line 68
    :cond_3
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public scala$collection$immutable$RedBlackTree$$balanceLeft(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(ZTA;TB;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object p1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    new-instance v5, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v5, v1, v2, v3, v4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object v1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    new-instance v1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v1, p2, p3, p4, p5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, p1, v0, v5, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, p4}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object p1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    new-instance v5, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v5, v1, v2, v3, v4}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object v1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    new-instance v1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v1, p2, p3, p4, p5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, p1, v0, v5, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct/range {p0 .. p5}, Lscala/collection/immutable/RedBlackTree$;->mkTree(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public scala$collection$immutable$RedBlackTree$$balanceRight(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(ZTA;TB;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p5}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object p1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v2, p2, p3, p4, v1}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object p2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p5

    new-instance v1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v1, p2, p3, p4, p5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, p1, v0, v2, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, p5}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$;->isRedTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    sget-object p1, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v2, p2, p3, p4, v1}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    sget-object p2, Lscala/collection/immutable/RedBlackTree$BlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$BlackTree$;

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-virtual {p4}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p4

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p5

    invoke-virtual {p5}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p5

    new-instance v1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    invoke-direct {v1, p2, p3, p4, p5}, Lscala/collection/immutable/RedBlackTree$BlackTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    new-instance p2, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {p2, p1, v0, v2, v1}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct/range {p0 .. p5}, Lscala/collection/immutable/RedBlackTree$;->mkTree(ZLjava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public scala$collection$immutable$RedBlackTree$$isBlackTree(Lscala/collection/immutable/RedBlackTree$Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "**>;)Z"
        }
    .end annotation

    .line 128
    instance-of p1, p1, Lscala/collection/immutable/RedBlackTree$BlackTree;

    return p1
.end method

.method public slice(Lscala/collection/immutable/RedBlackTree$Tree;IILscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;II",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doSlice(Lscala/collection/immutable/RedBlackTree$Tree;II)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public smallest(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 86
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1

    .line 84
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "empty map"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public take(Lscala/collection/immutable/RedBlackTree$Tree;ILscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;I",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Lscala/collection/immutable/RedBlackTree$;->doTake(Lscala/collection/immutable/RedBlackTree$Tree;I)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public to(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doTo(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public until(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$;->doUntil(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public update(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;TA;TB1;Z",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 66
    invoke-direct/range {p0 .. p5}, Lscala/collection/immutable/RedBlackTree$;->upd(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$;->blacken(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method public valuesIterator(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lscala/collection/immutable/RedBlackTree$ValuesIterator;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/RedBlackTree$ValuesIterator;-><init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public valuesIterator$default$2()Lscala/None$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/None$;"
        }
    .end annotation

    .line 115
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method
