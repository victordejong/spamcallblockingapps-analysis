.class public abstract Lscala/collection/immutable/RedBlackTree$Tree;
.super Ljava/lang/Object;
.source "RedBlackTree.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final count:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final left:Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final right:Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/RedBlackTree$Tree<",
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

    .line 433
    iput-object p1, p0, Lscala/collection/immutable/RedBlackTree$Tree;->key:Ljava/lang/Object;

    .line 434
    iput-object p2, p0, Lscala/collection/immutable/RedBlackTree$Tree;->value:Ljava/lang/Object;

    .line 435
    iput-object p3, p0, Lscala/collection/immutable/RedBlackTree$Tree;->left:Lscala/collection/immutable/RedBlackTree$Tree;

    .line 436
    iput-object p4, p0, Lscala/collection/immutable/RedBlackTree$Tree;->right:Lscala/collection/immutable/RedBlackTree$Tree;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    sget-object p1, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    invoke-virtual {p1, p3}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sget-object p2, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    invoke-virtual {p2, p4}, Lscala/collection/immutable/RedBlackTree$;->count(Lscala/collection/immutable/RedBlackTree$Tree;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lscala/collection/immutable/RedBlackTree$Tree;->count:I

    return-void
.end method


# virtual methods
.method public abstract black()Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public final count()I
    .locals 1

    .line 438
    iget v0, p0, Lscala/collection/immutable/RedBlackTree$Tree;->count:I

    return v0
.end method

.method public final key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$Tree;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final left()Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$Tree;->left:Lscala/collection/immutable/RedBlackTree$Tree;

    return-object v0
.end method

.method public abstract red()Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public final right()Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$Tree;->right:Lscala/collection/immutable/RedBlackTree$Tree;

    return-object v0
.end method

.method public final value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$Tree;->value:Ljava/lang/Object;

    return-object v0
.end method
