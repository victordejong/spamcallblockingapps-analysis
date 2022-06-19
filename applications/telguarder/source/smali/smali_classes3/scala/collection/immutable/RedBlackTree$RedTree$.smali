.class public Lscala/collection/immutable/RedBlackTree$RedTree$;
.super Ljava/lang/Object;
.source "RedBlackTree.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedTree$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree$;

    invoke-direct {v0}, Lscala/collection/immutable/RedBlackTree$RedTree$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 459
    sget-object v0, Lscala/collection/immutable/RedBlackTree$RedTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$RedTree$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$RedTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$RedTree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 460
    new-instance v0, Lscala/collection/immutable/RedBlackTree$RedTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/RedBlackTree$RedTree;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$Tree;Lscala/collection/immutable/RedBlackTree$Tree;)V

    return-object v0
.end method

.method public unapply(Lscala/collection/immutable/RedBlackTree$RedTree;)Lscala/Some;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$RedTree<",
            "TA;TB;>;)",
            "Lscala/Some<",
            "Lscala/Tuple4<",
            "TA;TB;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;>;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple4;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$RedTree;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$RedTree;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$RedTree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v4

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$RedTree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
