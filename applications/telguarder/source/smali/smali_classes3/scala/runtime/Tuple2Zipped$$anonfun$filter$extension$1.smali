.class public final Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tuple2Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple2Zipped;->filter(Lscala/Function2;Lscala/collection/generic/CanBuildFrom;Lscala/collection/generic/CanBuildFrom;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TEl1;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b1$1:Lscala/collection/mutable/Builder;

.field private final b2$1:Lscala/collection/mutable/Builder;

.field private final elems2$3:Lscala/collection/Iterator;

.field private final f$3:Lscala/Function2;

.field private final nonLocalReturnKey3$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->b1$1:Lscala/collection/mutable/Builder;

    iput-object p2, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->b2$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->elems2$3:Lscala/collection/Iterator;

    iput-object p4, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->f$3:Lscala/Function2;

    iput-object p5, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->nonLocalReturnKey3$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->elems2$3:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->elems2$3:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->f$3:Lscala/Function2;

    invoke-interface {v1, p1, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->b1$1:Lscala/collection/mutable/Builder;

    invoke-interface {v1, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 78
    iget-object p1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->b2$1:Lscala/collection/mutable/Builder;

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1

    .line 81
    :cond_1
    new-instance p1, Lscala/runtime/NonLocalReturnControl;

    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->nonLocalReturnKey3$1:Ljava/lang/Object;

    new-instance v1, Lscala/Tuple2;

    iget-object v2, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->b1$1:Lscala/collection/mutable/Builder;

    invoke-interface {v2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/runtime/Tuple2Zipped$$anonfun$filter$extension$1;->b2$1:Lscala/collection/mutable/Builder;

    invoke-interface {v3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p1
.end method
