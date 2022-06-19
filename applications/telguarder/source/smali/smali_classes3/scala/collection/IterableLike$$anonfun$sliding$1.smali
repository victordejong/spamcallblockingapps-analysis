.class public final Lscala/collection/IterableLike$$anonfun$sliding$1;
.super Lscala/runtime/AbstractFunction1;
.source "IterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableLike;->sliding(II)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Seq<",
        "TA;>;TRepr;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/IterableLike;


# direct methods
.method public constructor <init>(Lscala/collection/IterableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/IterableLike$$anonfun$sliding$1;->$outer:Lscala/collection/IterableLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/IterableLike$$anonfun$sliding$1;->apply(Lscala/collection/Seq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Seq;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)TRepr;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lscala/collection/IterableLike$$anonfun$sliding$1;->$outer:Lscala/collection/IterableLike;

    invoke-interface {v0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 206
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 207
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
