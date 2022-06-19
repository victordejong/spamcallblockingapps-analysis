.class public final Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "DoubleLinkedListLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/DoubleLinkedListLike;->apply(I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TThis;TA;>;",
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

    .line 117
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Lscala/collection/mutable/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$1;->apply(Lscala/collection/mutable/Seq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Seq;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)TA;"
        }
    .end annotation

    .line 117
    check-cast p1, Lscala/collection/mutable/LinkedListLike;

    invoke-interface {p1}, Lscala/collection/mutable/LinkedListLike;->elem()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
