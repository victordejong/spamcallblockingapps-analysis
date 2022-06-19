.class public final Lscala/collection/SeqLike$$anonfun$intersect$1;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike;->intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;
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
.field private final b$4:Lscala/collection/mutable/Builder;

.field private final occ$2:Lscala/collection/mutable/Map;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Map;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 481
    iput-object p2, p0, Lscala/collection/SeqLike$$anonfun$intersect$1;->occ$2:Lscala/collection/mutable/Map;

    iput-object p3, p0, Lscala/collection/SeqLike$$anonfun$intersect$1;->b$4:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anonfun$intersect$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$intersect$1;->occ$2:Lscala/collection/mutable/Map;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    iget-object v1, p0, Lscala/collection/SeqLike$$anonfun$intersect$1;->b$4:Lscala/collection/mutable/Builder;

    invoke-interface {v1, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 485
    iget-object v1, p0, Lscala/collection/SeqLike$$anonfun$intersect$1;->occ$2:Lscala/collection/mutable/Map;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lscala/collection/mutable/Map;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
