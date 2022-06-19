.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;
.super Lscala/runtime/AbstractFunction2;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TT;TT;TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cmp$2:Lscala/math/Ordering;

.field private final f$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 495
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;->f$2:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;->cmp$2:Lscala/math/Ordering;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;->cmp$2:Lscala/math/Ordering;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;->f$2:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$minBy$1;->f$2:Lscala/Function1;

    invoke-interface {v2, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method
