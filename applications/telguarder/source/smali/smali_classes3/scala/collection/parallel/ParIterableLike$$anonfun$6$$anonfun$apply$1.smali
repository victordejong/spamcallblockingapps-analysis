.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike$$anonfun$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TU;",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cb$1:Lscala/collection/parallel/Combiner;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$$anonfun$6;Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.$anonfun$6;)V"
        }
    .end annotation

    .line 623
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1;->cb$1:Lscala/collection/parallel/Combiner;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 623
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1;->apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1;->cb$1:Lscala/collection/parallel/Combiner;

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Combiner;

    return-object p1
.end method
