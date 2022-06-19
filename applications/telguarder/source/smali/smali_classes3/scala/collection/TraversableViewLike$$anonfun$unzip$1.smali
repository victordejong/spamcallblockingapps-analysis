.class public final Lscala/collection/TraversableViewLike$$anonfun$unzip$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike;->unzip(Lscala/Function1;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;TA1;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final asPair$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 289
    iput-object p2, p0, Lscala/collection/TraversableViewLike$$anonfun$unzip$1;->asPair$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TA1;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lscala/collection/TraversableViewLike$$anonfun$unzip$1;->asPair$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
