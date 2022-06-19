.class public final Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/GenMapLike;->equals(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final x2$1:Lscala/collection/GenMap;


# direct methods
.method public constructor <init>(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenMapLike<",
            "TA;TB;TRepr;>;)V"
        }
    .end annotation

    .line 119
    iput-object p2, p0, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;->x2$1:Lscala/collection/GenMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;->apply(Lscala/Tuple2;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 120
    iget-object v0, p0, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;->x2$1:Lscala/collection/GenMap;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/GenMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lscala/Some;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 120
    :cond_5
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
