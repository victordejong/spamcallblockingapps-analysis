.class public final Lscala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5;
.super Lscala/runtime/AbstractFunction1;
.source "ParMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParMapLike$$anon$1;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParMapLike$$anon$1;

.field private final f$3:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParMapLike$$anon$1;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParMapLike<",
            "TK;TV;TRepr;TSequential;>.$anon$1;)V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5;->$outer:Lscala/collection/parallel/ParMapLike$$anon$1;

    iput-object p2, p0, Lscala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5;->f$3:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5;->apply(Lscala/Tuple2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5;->$outer:Lscala/collection/parallel/ParMapLike$$anon$1;

    iget-object v0, v0, Lscala/collection/parallel/ParMapLike$$anon$1;->p$1:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5;->f$3:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method
