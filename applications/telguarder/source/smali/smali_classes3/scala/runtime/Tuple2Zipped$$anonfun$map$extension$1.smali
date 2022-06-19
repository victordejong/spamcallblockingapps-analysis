.class public final Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tuple2Zipped.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/Tuple2Zipped;->map(Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TEl1;",
        "Lscala/collection/mutable/Builder<",
        "TB;TTo;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$1:Lscala/collection/mutable/Builder;

.field private final elems2$1:Lscala/collection/Iterator;

.field private final f$1:Lscala/Function2;

.field private final nonLocalReturnKey1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Builder;Lscala/collection/Iterator;Lscala/Function2;Ljava/lang/Object;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->b$1:Lscala/collection/mutable/Builder;

    iput-object p2, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->elems2$1:Lscala/collection/Iterator;

    iput-object p3, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->f$1:Lscala/Function2;

    iput-object p4, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEl1;)",
            "Lscala/collection/mutable/Builder<",
            "TB;TTo;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->elems2$1:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->b$1:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->f$1:Lscala/Function2;

    iget-object v2, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->elems2$1:Lscala/collection/Iterator;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Lscala/runtime/NonLocalReturnControl;

    iget-object v0, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    iget-object v1, p0, Lscala/runtime/Tuple2Zipped$$anonfun$map$extension$1;->b$1:Lscala/collection/mutable/Builder;

    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p1
.end method
