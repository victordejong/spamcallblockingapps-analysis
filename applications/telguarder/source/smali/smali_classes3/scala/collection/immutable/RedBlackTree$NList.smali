.class public final Lscala/collection/immutable/RedBlackTree$NList;
.super Ljava/lang/Object;
.source "RedBlackTree.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final tail:Lscala/collection/immutable/RedBlackTree$NList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "TA;>;)V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lscala/collection/immutable/RedBlackTree$NList;->head:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/RedBlackTree$NList;->tail:Lscala/collection/immutable/RedBlackTree$NList;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$NList;->head:Ljava/lang/Object;

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/RedBlackTree$NList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "TA;>;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$NList;->tail:Lscala/collection/immutable/RedBlackTree$NList;

    return-object v0
.end method
