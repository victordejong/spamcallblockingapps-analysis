.class public final Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike$Sliced;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableViewLike$Sliced;

.field private final f$6:Lscala/Function1;

.field private final index$1:Lscala/runtime/IntRef;

.field private final nonLocalReturnKey2$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$Sliced;Lscala/runtime/IntRef;Ljava/lang/Object;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.Sliced;)V"
        }
    .end annotation

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->$outer:Lscala/collection/TraversableViewLike$Sliced;

    iput-object p2, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->index$1:Lscala/runtime/IntRef;

    iput-object p3, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->nonLocalReturnKey2$1:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->f$6:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->$outer:Lscala/collection/TraversableViewLike$Sliced;

    invoke-interface {v0}, Lscala/collection/TraversableViewLike$Sliced;->from()I

    move-result v0

    iget-object v1, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->index$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    if-gt v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->$outer:Lscala/collection/TraversableViewLike$Sliced;

    invoke-interface {v0}, Lscala/collection/TraversableViewLike$Sliced;->until()I

    move-result v0

    iget-object v1, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->index$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->f$6:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    new-instance p1, Lscala/runtime/NonLocalReturnControl$mcV$sp;

    iget-object v0, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->nonLocalReturnKey2$1:Ljava/lang/Object;

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-direct {p1, v0, v1}, Lscala/runtime/NonLocalReturnControl$mcV$sp;-><init>(Ljava/lang/Object;Lscala/runtime/BoxedUnit;)V

    throw p1

    .line 155
    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 159
    :goto_0
    iget-object p1, p0, Lscala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1;->index$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
