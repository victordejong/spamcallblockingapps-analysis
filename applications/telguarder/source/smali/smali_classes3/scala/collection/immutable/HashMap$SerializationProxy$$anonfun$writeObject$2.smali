.class public final Lscala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$2;
.super Lscala/runtime/AbstractFunction1;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashMap$SerializationProxy;->writeObject(Ljava/io/ObjectOutputStream;)V
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
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final out$1:Ljava/io/ObjectOutputStream;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashMap$SerializationProxy;Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashMap$SerializationProxy<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 573
    iput-object p2, p0, Lscala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$2;->out$1:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$2;->apply(Lscala/Tuple2;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 574
    iget-object v0, p0, Lscala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$2;->out$1:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lscala/collection/immutable/HashMap$SerializationProxy$$anonfun$writeObject$2;->out$1:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 573
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
