.class public final Lscala/collection/mutable/AnyRefMap$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "AnyRefMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/AnyRefMap$;->apply(Lscala/collection/Seq;)Lscala/collection/mutable/AnyRefMap;
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
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final arm$1:Lscala/collection/mutable/AnyRefMap;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/AnyRefMap;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap$$anonfun$apply$1;->arm$1:Lscala/collection/mutable/AnyRefMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 424
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap$$anonfun$apply$1;->apply(Lscala/Tuple2;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap$$anonfun$apply$1;->arm$1:Lscala/collection/mutable/AnyRefMap;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/AnyRefMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
