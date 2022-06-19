.class public final Lscala/collection/mutable/LinkedListLike$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "LinkedListLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/LinkedListLike;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private elems:Lscala/collection/mutable/LinkedListLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedListLike<",
            "TA;TThis;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/LinkedListLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedListLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 166
    iput-object p1, p0, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems:Lscala/collection/mutable/LinkedListLike;

    return-void
.end method

.method private elems()Lscala/collection/mutable/LinkedListLike;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedListLike<",
            "TA;TThis;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems:Lscala/collection/mutable/LinkedListLike;

    return-object v0
.end method

.method private elems_$eq(Lscala/collection/mutable/LinkedListLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedListLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems:Lscala/collection/mutable/LinkedListLike;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 167
    invoke-direct {p0}, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems()Lscala/collection/mutable/LinkedListLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/LinkedListLike;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems()Lscala/collection/mutable/LinkedListLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/LinkedListLike;->elem()Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-direct {p0}, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems()Lscala/collection/mutable/LinkedListLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/LinkedListLike;->next()Lscala/collection/mutable/Seq;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/LinkedListLike;

    invoke-direct {p0, v1}, Lscala/collection/mutable/LinkedListLike$$anon$1;->elems_$eq(Lscala/collection/mutable/LinkedListLike;)V

    return-object v0
.end method
