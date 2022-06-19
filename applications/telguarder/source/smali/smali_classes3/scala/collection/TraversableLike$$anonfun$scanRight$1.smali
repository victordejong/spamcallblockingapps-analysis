.class public final Lscala/collection/TraversableLike$$anonfun$scanRight$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
.field public final acc$2:Lscala/runtime/ObjectRef;

.field public final op$2:Lscala/Function2;

.field public final scanned$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 410
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->scanned$1:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->acc$2:Lscala/runtime/ObjectRef;

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->op$2:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->acc$2:Lscala/runtime/ObjectRef;

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->op$2:Lscala/Function2;

    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 412
    iget-object p1, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->scanned$1:Lscala/runtime/ObjectRef;

    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/List;

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$scanRight$1;->acc$2:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    iput-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
