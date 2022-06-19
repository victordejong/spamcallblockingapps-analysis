.class public final Lscala/collection/mutable/LinkedList$$anonfun$newBuilder$1;
.super Lscala/runtime/AbstractFunction1;
.source "LinkedList.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/LinkedList$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/MutableList<",
        "TA;>;",
        "Lscala/collection/mutable/LinkedList<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 123
    check-cast p1, Lscala/collection/mutable/MutableList;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList$$anonfun$newBuilder$1;->apply(Lscala/collection/mutable/MutableList;)Lscala/collection/mutable/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/MutableList;)Lscala/collection/mutable/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;)",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lscala/collection/mutable/MutableList;->toLinkedList()Lscala/collection/mutable/LinkedList;

    move-result-object p1

    return-object p1
.end method
