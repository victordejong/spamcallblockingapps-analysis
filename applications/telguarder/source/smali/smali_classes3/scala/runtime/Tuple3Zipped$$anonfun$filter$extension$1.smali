.class public final Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tuple3Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple3Zipped;->filter(Lscala/Function3;Lscala/collection/generic/CanBuildFrom;Lscala/collection/generic/CanBuildFrom;Lscala/collection/generic/CanBuildFrom;)Lscala/Tuple3;
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

.field private final b3$1:Lscala/collection/mutable/Builder;

.field private final elems2$3:Lscala/collection/Iterator;

.field private final elems3$3:Lscala/collection/Iterator;

.field private final f$3:Lscala/Function3;

.field private final nonLocalReturnKey3$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/collection/Iterator;Lscala/collection/Iterator;Lscala/Function3;Ljava/lang/Object;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b1$1:Lscala/collection/mutable/Builder;

    iput-object p2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b2$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b3$1:Lscala/collection/mutable/Builder;

    iput-object p4, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->elems2$3:Lscala/collection/Iterator;

    iput-object p5, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->elems3$3:Lscala/collection/Iterator;

    iput-object p6, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->f$3:Lscala/Function3;

    iput-object p7, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->nonLocalReturnKey3$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->elems2$3:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->elems3$3:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->elems2$3:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->elems3$3:Lscala/collection/Iterator;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->f$3:Lscala/Function3;

    invoke-interface {v2, p1, v0, v1}, Lscala/Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b1$1:Lscala/collection/mutable/Builder;

    invoke-interface {v2, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 83
    iget-object p1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b2$1:Lscala/collection/mutable/Builder;

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 84
    iget-object p1, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b3$1:Lscala/collection/mutable/Builder;

    invoke-interface {p1, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1

    .line 87
    :cond_1
    new-instance p1, Lscala/runtime/NonLocalReturnControl;

    iget-object v0, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->nonLocalReturnKey3$1:Ljava/lang/Object;

    sget-object v1, Lscala/runtime/Tuple3Zipped$;->MODULE$:Lscala/runtime/Tuple3Zipped$;

    iget-object v2, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b1$1:Lscala/collection/mutable/Builder;

    iget-object v3, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b2$1:Lscala/collection/mutable/Builder;

    iget-object v4, p0, Lscala/runtime/Tuple3Zipped$$anonfun$filter$extension$1;->b3$1:Lscala/collection/mutable/Builder;

    invoke-virtual {v1, v2, v3, v4}, Lscala/runtime/Tuple3Zipped$;->scala$runtime$Tuple3Zipped$$result$1(Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;)Lscala/Tuple3;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p1
.end method
