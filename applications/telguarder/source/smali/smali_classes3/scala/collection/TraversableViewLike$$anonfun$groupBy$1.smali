.class public final Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Seq<",
        "TA;>;TThis;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 286
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;->$outer:Lscala/collection/TraversableViewLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 286
    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;->apply(Lscala/collection/Seq;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Seq;)Lscala/collection/TraversableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;->$outer:Lscala/collection/TraversableViewLike;

    new-instance v1, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1$$anonfun$apply$2;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableViewLike$$anonfun$groupBy$1$$anonfun$apply$2;-><init>(Lscala/collection/TraversableViewLike$$anonfun$groupBy$1;Lscala/collection/Seq;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableViewLike;->newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    invoke-static {v0, p1}, Lscala/collection/TraversableViewLike$class;->scala$collection$TraversableViewLike$$asThis(Lscala/collection/TraversableViewLike;Lscala/collection/TraversableViewLike$Transformed;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method
