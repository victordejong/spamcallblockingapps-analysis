.class public final Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike$TakenWhile;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike$TakenWhile;

.field private final f$8:Lscala/Function1;

.field private final nonLocalReturnKey3$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$TakenWhile;Ljava/lang/Object;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.TakenWhile;)V"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;->$outer:Lscala/collection/TraversableViewLike$TakenWhile;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;->nonLocalReturnKey3$1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;->f$8:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TU;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;->$outer:Lscala/collection/TraversableViewLike$TakenWhile;

    invoke-interface {v0}, Lscala/collection/TraversableViewLike$TakenWhile;->pred()Lscala/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;->f$8:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcV$sp;

    iget-object v0, p0, Lscala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5;->nonLocalReturnKey3$1:Ljava/lang/Object;

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcV$sp;-><init>(Ljava/lang/Object;Lscala/runtime/BoxedUnit;)V

    throw p1
.end method
