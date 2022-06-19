.class public final Lscala/collection/immutable/RedBlackTree$BlackTree;
.super Lscala/collection/immutable/RedBlackTree$Tree;
.source "RedBlackTree.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlackTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/RedBlackTree$Tree<",
        "TA;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$Tree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    return-void
.end method


# virtual methods
.method public black()Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    return-object p0
.end method

.method public red()Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 455
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v3

    new-instance v4, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v4, v0, v1, v2, v3}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 456
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "BlackTree("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
