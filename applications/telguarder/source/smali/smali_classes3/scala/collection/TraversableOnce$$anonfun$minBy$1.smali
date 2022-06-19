.class public final Lscala/collection/TraversableOnce$$anonfun$minBy$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
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
.field private final cmp$4:Lscala/math/Ordering;

.field private final f$2:Lscala/Function1;

.field private final first$3:Lscala/runtime/BooleanRef;

.field private final minElem$1:Lscala/runtime/ObjectRef;

.field private final minF$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;Lscala/Function1;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 258
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->minF$1:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->minElem$1:Lscala/runtime/ObjectRef;

    iput-object p4, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->first$3:Lscala/runtime/BooleanRef;

    iput-object p5, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->f$2:Lscala/Function1;

    iput-object p6, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->cmp$4:Lscala/math/Ordering;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->apply(Ljava/lang/Object;)V

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

    .line 259
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->f$2:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->first$3:Lscala/runtime/BooleanRef;

    iget-boolean v1, v1, Lscala/runtime/BooleanRef;->elem:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->cmp$4:Lscala/math/Ordering;

    iget-object v2, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->minF$1:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->minElem$1:Lscala/runtime/ObjectRef;

    iput-object p1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 262
    iget-object p1, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->minF$1:Lscala/runtime/ObjectRef;

    iput-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 263
    iget-object p1, p0, Lscala/collection/TraversableOnce$$anonfun$minBy$1;->first$3:Lscala/runtime/BooleanRef;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lscala/runtime/BooleanRef;->elem:Z

    :cond_1
    return-void
.end method
