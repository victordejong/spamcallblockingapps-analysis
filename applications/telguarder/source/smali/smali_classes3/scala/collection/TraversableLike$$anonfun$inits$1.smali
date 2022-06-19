.class public final Lscala/collection/TraversableLike$$anonfun$inits$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->inits()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Traversable<",
        "TA;>;",
        "Lscala/collection/Traversable<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 595
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 595
    check-cast p1, Lscala/collection/Traversable;

    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$inits$1;->apply(Lscala/collection/Traversable;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Traversable;)Lscala/collection/Traversable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Traversable<",
            "TA;>;)",
            "Lscala/collection/Traversable<",
            "TA;>;"
        }
    .end annotation

    .line 595
    invoke-interface {p1}, Lscala/collection/Traversable;->init()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Traversable;

    return-object p1
.end method
