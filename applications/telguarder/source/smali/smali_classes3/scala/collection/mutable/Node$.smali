.class public final Lscala/collection/mutable/Node$;
.super Ljava/lang/Object;
.source "AVLTree.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Node$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Node$;

    invoke-direct {v0}, Lscala/collection/mutable/Node$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/Node$;->MODULE$:Lscala/collection/mutable/Node$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 79
    sget-object v0, Lscala/collection/mutable/Node$;->MODULE$:Lscala/collection/mutable/Node$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)Lscala/collection/mutable/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;)",
            "Lscala/collection/mutable/Node<",
            "TA;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lscala/collection/mutable/Node;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/mutable/Node;-><init>(Ljava/lang/Object;Lscala/collection/mutable/AVLTree;Lscala/collection/mutable/AVLTree;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Node"

    return-object v0
.end method

.method public unapply(Lscala/collection/mutable/Node;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Node<",
            "TA;>;)",
            "Lscala/Option<",
            "Lscala/Tuple3<",
            "TA;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;",
            "Lscala/collection/mutable/AVLTree<",
            "TA;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 79
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple3;

    invoke-virtual {p1}, Lscala/collection/mutable/Node;->data()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/mutable/Node;->left()Lscala/collection/mutable/AVLTree;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/mutable/Node;->right()Lscala/collection/mutable/AVLTree;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
