.class public final Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1;
.super Lscala/runtime/AbstractFunction1;
.source "DoubleLinkedListLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/DoubleLinkedListLike;->update(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TThis;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final x$3:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/DoubleLinkedListLike;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/DoubleLinkedListLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 118
    iput-object p2, p0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1;->x$3:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Lscala/collection/mutable/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1;->apply(Lscala/collection/mutable/Seq;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Seq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)V"
        }
    .end annotation

    .line 118
    check-cast p1, Lscala/collection/mutable/LinkedListLike;

    iget-object v0, p0, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1;->x$3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/collection/mutable/LinkedListLike;->elem_$eq(Ljava/lang/Object;)V

    return-void
.end method
