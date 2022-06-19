.class public final Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$1;
.super Lscala/runtime/AbstractFunction1;
.source "DoubleLinkedListLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/DoubleLinkedListLike;->get(I)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TThis;",
        "Lscala/Some<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/mutable/DoubleLinkedListLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DoubleLinkedListLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Lscala/collection/mutable/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$get$1;->apply(Lscala/collection/mutable/Seq;)Lscala/Some;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Seq;)Lscala/Some;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)",
            "Lscala/Some<",
            "TA;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lscala/Some;

    check-cast p1, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p1}, Lscala/collection/mutable/LinkedListLike;->elem()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
