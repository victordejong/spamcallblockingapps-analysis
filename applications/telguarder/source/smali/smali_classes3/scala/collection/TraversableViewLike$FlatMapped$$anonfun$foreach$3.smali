.class public final Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike$FlatMapped;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike$FlatMapped;

.field public final f$4:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$FlatMapped;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.FlatMapped<TB;>;)V"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;->$outer:Lscala/collection/TraversableViewLike$FlatMapped;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;->f$4:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;->$outer:Lscala/collection/TraversableViewLike$FlatMapped;

    invoke-interface {v0}, Lscala/collection/TraversableViewLike$FlatMapped;->mapping()Lscala/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v0, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1;-><init>(Lscala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    return-void
.end method
