.class public final Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;
.super Lscala/runtime/AbstractFunction1;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/MapLike$MappedValues;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB;>;TD;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/MapLike$MappedValues;

.field private final g$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/MapLike$MappedValues;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike<",
            "TA;TB;TThis;>.MappedValues<TC;>;)V"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;->$outer:Lscala/collection/MapLike$MappedValues;

    iput-object p2, p0, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;->g$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;->apply(Lscala/Tuple2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)TD;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;->g$1:Lscala/Function1;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;->$outer:Lscala/collection/MapLike$MappedValues;

    iget-object v3, v3, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$f:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
